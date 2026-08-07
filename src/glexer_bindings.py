def length(string):
    return len(string.encode("utf-8"))


def slice_bytes(string, start, size):
    return string.encode("utf-8")[start:start + size].decode("utf-8", "replace")


def drop_byte(string):
    return string.encode("utf-8")[1:].decode("utf-8", "replace")