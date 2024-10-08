### Just a Python function will be a Keyword on Robot side

def check_string_length(string: str, length: int):
    """Verifies the length of given string to be exact."""
    if len(string) != length:
        raise ValueError(f"Length of '{string}' is '{len(string)}' but should be '{length}'")