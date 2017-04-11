function main () {
    If ( $PYTHON_ARCH -eq "64" ) {
        $url="https://github.com/ActivityWatch/wheels/raw/master/pyHook-1.5.1-cp35-cp35m-win_amd64.whl"
    } ElseIf ( $PYTHON_ARCH -eq "32" ) {
        $url="https://github.com/ActivityWatch/wheels/raw/master/pyHook-1.5.1-cp35-cp35m-win32.whl"
    } Else {
        Write-Output "Invalid architecture"
        return -1
    }
    pip install --user $url
}

main
