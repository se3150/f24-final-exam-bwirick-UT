import pytest
from brute import Brute
from unittest.mock import patch

todo = pytest.mark.skip(reason='todo: pending spec')

def describe_Brute():

    @pytest.fixture
    def cracker():
        return Brute("TDD")
    
    @pytest.fixture
    def string_of_nums():
        return Brute("435")

    def describe_bruteOnce():
        def it_tests_correctly(cracker):
            assert cracker.bruteOnce("TDD") == True

        def it_tests_incorrectly(cracker):
            assert cracker.bruteOnce("HDMI") == False

        def it_tests_empty_string(cracker):
            assert cracker.bruteOnce("") == False

        def it_tests_case_sensitivity(cracker):
            assert cracker.bruteOnce("tdd") == False

        def it_tests_special_characters(cracker):
            assert cracker.bruteOnce("T@D#D$") == False

        def it_tests_numeric_string(cracker):
            assert cracker.bruteOnce("12345") == False

        def it_tests_very_long_string(cracker):
            long_string = "TDD" * 1000
            assert cracker.bruteOnce(long_string) == False

        def it_tests_non_string_input(cracker):
            with pytest.raises(TypeError):
                cracker.bruteOnce(12345)
            with pytest.raises(TypeError):
                cracker.bruteOnce(None)

        def it_tests_against_a_string_of_nums(string_of_nums):
            assert string_of_nums.bruteOnce("435") == True

        def it_fails_to_hash():
            with pytest.raises(TypeError):
                Brute(307)


    def describe_bruteMany():
    
        def it_tests_a_successful_crack(cracker):
            with patch.object(Brute, 'randomGuess', return_value="TDD"):
                with patch.object(Brute, 'bruteOnce', return_value=True):
                    time_taken = cracker.bruteMany(limit=1)
                    assert time_taken >= 0

        def it_tests_an_unsuccessful_crack(cracker):
            with patch.object(Brute, 'randomGuess', return_value="wrong_guess"):
                with patch.object(Brute, 'bruteOnce', return_value=False):
                    time_taken = cracker.bruteMany(limit=1)
                    assert time_taken == -1

        def it_tests_an_eventual_success(cracker):
            # Simulate randomGuess returning "wrong_guess" for the first few attempts and "TDD" eventually
            with patch.object(Brute, 'randomGuess', side_effect=["wrong_guess"]*5 + ["TDD"]):
                with patch.object(Brute, 'bruteOnce', side_effect=[False]*5 + [True]):
                    time_taken = cracker.bruteMany(limit=100)
                    assert time_taken >= 0

        def it_tests_a_large_limit_no_crack(cracker):
            with patch.object(Brute, 'randomGuess', return_value="wrong_guess"):
                with patch.object(Brute, 'bruteOnce', return_value=False):
                    time_taken = cracker.bruteMany(limit=1000000)
                    assert time_taken == -1
