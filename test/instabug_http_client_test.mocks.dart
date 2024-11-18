// Mocks generated by Mockito 5.4.4 from annotations
// in instabug_http_client/test/instabug_http_client_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;
import 'dart:convert' as _i7;
import 'dart:typed_data' as _i9;

import 'package:http/http.dart' as _i2;
import 'package:instabug_flutter/instabug_flutter.dart' as _i4;
import 'package:instabug_flutter/src/generated/instabug.api.g.dart' as _i10;
import 'package:instabug_http_client/instabug_http_client.dart' as _i5;
import 'package:instabug_http_client/instabug_http_logger.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i8;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeClient_0 extends _i1.SmartFake implements _i2.Client {
  _FakeClient_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInstabugHttpLogger_1 extends _i1.SmartFake
    implements _i3.InstabugHttpLogger {
  _FakeInstabugHttpLogger_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_2 extends _i1.SmartFake implements _i2.Response {
  _FakeResponse_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamedResponse_3 extends _i1.SmartFake
    implements _i2.StreamedResponse {
  _FakeStreamedResponse_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [InstabugHttpLogger].
///
/// See the documentation for Mockito's code generation for more information.
class MockInstabugHttpLogger extends _i1.Mock
    implements _i3.InstabugHttpLogger {
  MockInstabugHttpLogger() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void onLogger(
    _i2.Response? response, {
    DateTime? startTime,
    _i4.W3CHeader? w3CHeader,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #onLogger,
          [response],
          {
            #startTime: startTime,
            #w3CHeader: w3CHeader,
          },
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [InstabugHttpClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockInstabugHttpClient extends _i1.Mock
    implements _i5.InstabugHttpClient {
  MockInstabugHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Client get client => (super.noSuchMethod(
        Invocation.getter(#client),
        returnValue: _FakeClient_0(
          this,
          Invocation.getter(#client),
        ),
      ) as _i2.Client);

  @override
  set client(_i2.Client? _client) => super.noSuchMethod(
        Invocation.setter(
          #client,
          _client,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i3.InstabugHttpLogger get logger => (super.noSuchMethod(
        Invocation.getter(#logger),
        returnValue: _FakeInstabugHttpLogger_1(
          this,
          Invocation.getter(#logger),
        ),
      ) as _i3.InstabugHttpLogger);

  @override
  set logger(_i3.InstabugHttpLogger? _logger) => super.noSuchMethod(
        Invocation.setter(
          #logger,
          _logger,
        ),
        returnValueForMissingStub: null,
      );

  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<_i2.Response> delete(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i7.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i2.Response>.value(_FakeResponse_2(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response>);

  @override
  _i6.Future<_i4.W3CHeader?> getW3cHeader(
    Map<String, String>? requestHeader,
    DateTime? startTime,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getW3cHeader,
          [
            requestHeader,
            startTime,
          ],
        ),
        returnValue: _i6.Future<_i4.W3CHeader?>.value(),
      ) as _i6.Future<_i4.W3CHeader?>);

  @override
  _i6.Future<_i2.Response> get(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i2.Response>.value(_FakeResponse_2(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<_i2.Response>);

  @override
  _i6.Future<_i2.Response> head(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i2.Response>.value(_FakeResponse_2(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<_i2.Response>);

  @override
  _i6.Future<_i2.Response> patch(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i7.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i2.Response>.value(_FakeResponse_2(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response>);

  @override
  _i6.Future<_i2.Response> post(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i7.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i2.Response>.value(_FakeResponse_2(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response>);

  @override
  _i6.Future<_i2.Response> put(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i7.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i6.Future<_i2.Response>.value(_FakeResponse_2(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i6.Future<_i2.Response>);

  @override
  _i6.Future<String> read(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<String>.value(_i8.dummyValue<String>(
          this,
          Invocation.method(
            #read,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i6.Future<String>);

  @override
  _i6.Future<_i9.Uint8List> readBytes(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readBytes,
          [url],
          {#headers: headers},
        ),
        returnValue: _i6.Future<_i9.Uint8List>.value(_i9.Uint8List(0)),
      ) as _i6.Future<_i9.Uint8List>);

  @override
  _i6.Future<_i2.StreamedResponse> send(_i2.BaseRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #send,
          [request],
        ),
        returnValue:
            _i6.Future<_i2.StreamedResponse>.value(_FakeStreamedResponse_3(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
      ) as _i6.Future<_i2.StreamedResponse>);

  @override
  void onLogger(
    _i2.Response? response, {
    DateTime? startTime,
    _i4.W3CHeader? w3CHeader,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #onLogger,
          [response],
          {
            #startTime: startTime,
            #w3CHeader: w3CHeader,
          },
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [InstabugHostApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockInstabugHostApi extends _i1.Mock implements _i10.InstabugHostApi {
  MockInstabugHostApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<void> setEnabled(bool? arg_isEnabled) => (super.noSuchMethod(
        Invocation.method(
          #setEnabled,
          [arg_isEnabled],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<bool> isEnabled() => (super.noSuchMethod(
        Invocation.method(
          #isEnabled,
          [],
        ),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);

  @override
  _i6.Future<bool> isBuilt() => (super.noSuchMethod(
        Invocation.method(
          #isBuilt,
          [],
        ),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);

  @override
  _i6.Future<void> init(
    String? arg_token,
    List<String?>? arg_invocationEvents,
    String? arg_debugLogsLevel,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #init,
          [
            arg_token,
            arg_invocationEvents,
            arg_debugLogsLevel,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> show() => (super.noSuchMethod(
        Invocation.method(
          #show,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> showWelcomeMessageWithMode(String? arg_mode) =>
      (super.noSuchMethod(
        Invocation.method(
          #showWelcomeMessageWithMode,
          [arg_mode],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> identifyUser(
    String? arg_email,
    String? arg_name,
    String? arg_userId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #identifyUser,
          [
            arg_email,
            arg_name,
            arg_userId,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> setUserData(String? arg_data) => (super.noSuchMethod(
        Invocation.method(
          #setUserData,
          [arg_data],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> logUserEvent(String? arg_name) => (super.noSuchMethod(
        Invocation.method(
          #logUserEvent,
          [arg_name],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> logOut() => (super.noSuchMethod(
        Invocation.method(
          #logOut,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> setLocale(String? arg_locale) => (super.noSuchMethod(
        Invocation.method(
          #setLocale,
          [arg_locale],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> setColorTheme(String? arg_theme) => (super.noSuchMethod(
        Invocation.method(
          #setColorTheme,
          [arg_theme],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> setWelcomeMessageMode(String? arg_mode) =>
      (super.noSuchMethod(
        Invocation.method(
          #setWelcomeMessageMode,
          [arg_mode],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> setPrimaryColor(int? arg_color) => (super.noSuchMethod(
        Invocation.method(
          #setPrimaryColor,
          [arg_color],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> setSessionProfilerEnabled(bool? arg_enabled) =>
      (super.noSuchMethod(
        Invocation.method(
          #setSessionProfilerEnabled,
          [arg_enabled],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> setValueForStringWithKey(
    String? arg_value,
    String? arg_key,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setValueForStringWithKey,
          [
            arg_value,
            arg_key,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> appendTags(List<String?>? arg_tags) => (super.noSuchMethod(
        Invocation.method(
          #appendTags,
          [arg_tags],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> resetTags() => (super.noSuchMethod(
        Invocation.method(
          #resetTags,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<List<String?>?> getTags() => (super.noSuchMethod(
        Invocation.method(
          #getTags,
          [],
        ),
        returnValue: _i6.Future<List<String?>?>.value(),
      ) as _i6.Future<List<String?>?>);

  @override
  _i6.Future<void> addExperiments(List<String?>? arg_experiments) =>
      (super.noSuchMethod(
        Invocation.method(
          #addExperiments,
          [arg_experiments],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> removeExperiments(List<String?>? arg_experiments) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeExperiments,
          [arg_experiments],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> clearAllExperiments() => (super.noSuchMethod(
        Invocation.method(
          #clearAllExperiments,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> addFeatureFlags(
          Map<String?, String?>? arg_featureFlagsMap) =>
      (super.noSuchMethod(
        Invocation.method(
          #addFeatureFlags,
          [arg_featureFlagsMap],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> removeFeatureFlags(List<String?>? arg_featureFlags) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeFeatureFlags,
          [arg_featureFlags],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> removeAllFeatureFlags() => (super.noSuchMethod(
        Invocation.method(
          #removeAllFeatureFlags,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> setUserAttribute(
    String? arg_value,
    String? arg_key,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setUserAttribute,
          [
            arg_value,
            arg_key,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> removeUserAttribute(String? arg_key) => (super.noSuchMethod(
        Invocation.method(
          #removeUserAttribute,
          [arg_key],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<String?> getUserAttributeForKey(String? arg_key) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUserAttributeForKey,
          [arg_key],
        ),
        returnValue: _i6.Future<String?>.value(),
      ) as _i6.Future<String?>);

  @override
  _i6.Future<Map<String?, String?>?> getUserAttributes() => (super.noSuchMethod(
        Invocation.method(
          #getUserAttributes,
          [],
        ),
        returnValue: _i6.Future<Map<String?, String?>?>.value(),
      ) as _i6.Future<Map<String?, String?>?>);

  @override
  _i6.Future<void> setReproStepsConfig(
    String? arg_bugMode,
    String? arg_crashMode,
    String? arg_sessionReplayMode,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setReproStepsConfig,
          [
            arg_bugMode,
            arg_crashMode,
            arg_sessionReplayMode,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> reportScreenChange(String? arg_screenName) =>
      (super.noSuchMethod(
        Invocation.method(
          #reportScreenChange,
          [arg_screenName],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> setCustomBrandingImage(
    String? arg_light,
    String? arg_dark,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setCustomBrandingImage,
          [
            arg_light,
            arg_dark,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> setFont(String? arg_font) => (super.noSuchMethod(
        Invocation.method(
          #setFont,
          [arg_font],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> addFileAttachmentWithURL(
    String? arg_filePath,
    String? arg_fileName,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #addFileAttachmentWithURL,
          [
            arg_filePath,
            arg_fileName,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> addFileAttachmentWithData(
    _i9.Uint8List? arg_data,
    String? arg_fileName,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #addFileAttachmentWithData,
          [
            arg_data,
            arg_fileName,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> clearFileAttachments() => (super.noSuchMethod(
        Invocation.method(
          #clearFileAttachments,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> networkLog(Map<String?, Object?>? arg_data) =>
      (super.noSuchMethod(
        Invocation.method(
          #networkLog,
          [arg_data],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> registerFeatureFlagChangeListener() => (super.noSuchMethod(
        Invocation.method(
          #registerFeatureFlagChangeListener,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<Map<String?, bool?>> isW3CFeatureFlagsEnabled() =>
      (super.noSuchMethod(
        Invocation.method(
          #isW3CFeatureFlagsEnabled,
          [],
        ),
        returnValue: _i6.Future<Map<String?, bool?>>.value(<String?, bool?>{}),
      ) as _i6.Future<Map<String?, bool?>>);

  @override
  _i6.Future<void> willRedirectToStore() => (super.noSuchMethod(
        Invocation.method(
          #willRedirectToStore,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}
