#######################################################################
#
# Kayako Ruby REST API library
# _____________________________________________________________________
#
# @author      Andriy Lesyuk
#
# @package     KayakoClient
# @copyright   Copyright (c) 2011-2013, Kayako
# @license     FreeBSD
# @link        https://github.com/kayako/ruby-api-library
#
#######################################################################

require 'test/unit'
require 'kayako_client'

class TestHTTP < Test::Unit::TestCase

    def test_response
        test = KayakoClient::HTTPResponse.new(303, 'Test')
        assert_equal test.status, 303
        assert_equal test.body, 'Test'

        test = KayakoClient::HTTPOK.new
        assert_equal test.status, 200
        assert_equal test.body, ''

        test = KayakoClient::HTTPForbidden.new('Test')
        assert_equal test.status, 403
        assert_equal test.body, 'Test'
    end

end
