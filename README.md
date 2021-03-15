# ruby_app

This parser is created for parsing logs and getting statistics based on this logs.

To use the parser run the following command with absolute path to a log file as a parameter (or put a log file near the `parser.rb` and specify only the file name):

    ruby parser.rb <path_to_log_file>

You will see number of total visits and number of unique views of each page.

Log file should contain lines with path to a web page and IP of the visitor, space separated:

    /help_page/1 126.318.035.038
    /content 120.310.030.030
