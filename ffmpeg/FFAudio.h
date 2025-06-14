#ifndef FFAUDIO_H
#define FFAUDIO_H

#import <FFAudio/libavcodec/avcodec.h>
#import <FFAudio/libavformat/avformat.h>
#import <FFAudio/libavutil/avutil.h>
#import <FFAudio/libswresample/swresample.h>


static const int averror_bsf_not_found = AVERROR_BSF_NOT_FOUND;
static const int averror_bug = AVERROR_BUG;
static const int averror_buffer_too_small = AVERROR_BUFFER_TOO_SMALL;
static const int averror_decoder_not_found = AVERROR_DECODER_NOT_FOUND;
static const int averror_demuxer_not_found = AVERROR_DEMUXER_NOT_FOUND;
static const int averror_encoder_not_found = AVERROR_ENCODER_NOT_FOUND;
static const int averror_eof = AVERROR_EOF;
static const int averror_exit = AVERROR_EXIT;
static const int averror_external = AVERROR_EXTERNAL;
static const int averror_filter_not_found = AVERROR_FILTER_NOT_FOUND;
static const int averror_invaliddata = AVERROR_INVALIDDATA;
static const int averror_muxer_not_found = AVERROR_MUXER_NOT_FOUND;
static const int averror_option_not_found = AVERROR_OPTION_NOT_FOUND;
static const int averror_patchwelcome = AVERROR_PATCHWELCOME;
static const int averror_protocol_not_found = AVERROR_PROTOCOL_NOT_FOUND;
static const int averror_stream_not_found = AVERROR_STREAM_NOT_FOUND;
static const int averror_bug2 = AVERROR_BUG2;
static const int averror_unknown = AVERROR_UNKNOWN;
static const int averror_experimental = AVERROR_EXPERIMENTAL;
static const int averror_input_changed = AVERROR_INPUT_CHANGED;
static const int averror_output_changed = AVERROR_OUTPUT_CHANGED;
static const int averror_http_bad_request = AVERROR_HTTP_BAD_REQUEST;
static const int averror_http_unauthorized = AVERROR_HTTP_UNAUTHORIZED;
static const int averror_http_forbidden = AVERROR_HTTP_FORBIDDEN;
static const int averror_http_not_found = AVERROR_HTTP_NOT_FOUND;
static const int averror_http_too_many_requests = AVERROR_HTTP_TOO_MANY_REQUESTS;
static const int averror_http_other_4xx = AVERROR_HTTP_OTHER_4XX;
static const int averror_http_server_error = AVERROR_HTTP_SERVER_ERROR;
static const int av_error_max_string_size = AV_ERROR_MAX_STRING_SIZE;


#endif /* FFAUDIO_H */