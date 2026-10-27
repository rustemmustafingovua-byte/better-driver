.class public final Lio/sentry/JsonSerializer;
.super Ljava/lang/Object;
.source "JsonSerializer.java"

# interfaces
.implements Lio/sentry/ISerializer;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final WRITER_BUFFER_SIZE:I = 0x200


# instance fields
.field private final deserializersByClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/sentry/JsonDeserializer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/JsonSerializer;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 3
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    .line 82
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/App;

    new-instance v2, Lio/sentry/protocol/App$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/App$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/Breadcrumb;

    new-instance v2, Lio/sentry/Breadcrumb$Deserializer;

    invoke-direct {v2}, Lio/sentry/Breadcrumb$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/Browser;

    new-instance v2, Lio/sentry/protocol/Browser$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Browser$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/Contexts;

    new-instance v2, Lio/sentry/protocol/Contexts$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Contexts$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/DebugImage;

    new-instance v2, Lio/sentry/protocol/DebugImage$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/DebugImage$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/DebugMeta;

    new-instance v2, Lio/sentry/protocol/DebugMeta$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/DebugMeta$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/Device;

    new-instance v2, Lio/sentry/protocol/Device$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Device$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/Device$DeviceOrientation;

    new-instance v2, Lio/sentry/protocol/Device$DeviceOrientation$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Device$DeviceOrientation$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/Feedback;

    new-instance v2, Lio/sentry/protocol/Feedback$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Feedback$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/Gpu;

    new-instance v2, Lio/sentry/protocol/Gpu$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Gpu$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    new-instance v2, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/MeasurementValue;

    new-instance v2, Lio/sentry/protocol/MeasurementValue$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/MeasurementValue$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/Mechanism;

    new-instance v2, Lio/sentry/protocol/Mechanism$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Mechanism$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/Message;

    new-instance v2, Lio/sentry/protocol/Message$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Message$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/OperatingSystem;

    new-instance v2, Lio/sentry/protocol/OperatingSystem$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/OperatingSystem$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/ProfileChunk;

    new-instance v2, Lio/sentry/ProfileChunk$Deserializer;

    invoke-direct {v2}, Lio/sentry/ProfileChunk$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/ProfileContext;

    new-instance v2, Lio/sentry/ProfileContext$Deserializer;

    invoke-direct {v2}, Lio/sentry/ProfileContext$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/ProfilingTraceData;

    new-instance v2, Lio/sentry/ProfilingTraceData$Deserializer;

    invoke-direct {v2}, Lio/sentry/ProfilingTraceData$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/ProfilingTransactionData;

    new-instance v2, Lio/sentry/ProfilingTransactionData$Deserializer;

    invoke-direct {v2}, Lio/sentry/ProfilingTransactionData$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/profilemeasurements/ProfileMeasurement;

    new-instance v2, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;

    invoke-direct {v2}, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    new-instance v2, Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;

    invoke-direct {v2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/Request;

    new-instance v2, Lio/sentry/protocol/Request$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Request$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/ReplayRecording;

    new-instance v2, Lio/sentry/ReplayRecording$Deserializer;

    invoke-direct {v2}, Lio/sentry/ReplayRecording$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    new-instance v2, Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/rrweb/RRWebEventType;

    new-instance v2, Lio/sentry/rrweb/RRWebEventType$Deserializer;

    invoke-direct {v2}, Lio/sentry/rrweb/RRWebEventType$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/rrweb/RRWebInteractionEvent;

    new-instance v2, Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/rrweb/RRWebInteractionMoveEvent;

    new-instance v2, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/rrweb/RRWebMetaEvent;

    new-instance v2, Lio/sentry/rrweb/RRWebMetaEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/rrweb/RRWebMetaEvent$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/rrweb/RRWebSpanEvent;

    new-instance v2, Lio/sentry/rrweb/RRWebSpanEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/rrweb/RRWebSpanEvent$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/rrweb/RRWebVideoEvent;

    new-instance v2, Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/SdkInfo;

    new-instance v2, Lio/sentry/protocol/SdkInfo$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/SdkInfo$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/SdkVersion;

    new-instance v2, Lio/sentry/protocol/SdkVersion$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/SdkVersion$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/SentryEnvelopeHeader;

    new-instance v2, Lio/sentry/SentryEnvelopeHeader$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryEnvelopeHeader$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/SentryEnvelopeItemHeader;

    new-instance v2, Lio/sentry/SentryEnvelopeItemHeader$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryEnvelopeItemHeader$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/SentryEvent;

    new-instance v2, Lio/sentry/SentryEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryEvent$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/SentryException;

    new-instance v2, Lio/sentry/protocol/SentryException$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/SentryException$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/SentryItemType;

    new-instance v2, Lio/sentry/SentryItemType$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryItemType$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/SentryLevel;

    new-instance v2, Lio/sentry/SentryLevel$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryLevel$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/SentryLockReason;

    new-instance v2, Lio/sentry/SentryLockReason$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryLockReason$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/SentryLogEvents;

    new-instance v2, Lio/sentry/SentryLogEvents$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryLogEvents$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/SentryMetricsEvents;

    new-instance v2, Lio/sentry/SentryMetricsEvents$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryMetricsEvents$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/SentryPackage;

    new-instance v2, Lio/sentry/protocol/SentryPackage$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/SentryPackage$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/SentryRuntime;

    new-instance v2, Lio/sentry/protocol/SentryRuntime$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/SentryRuntime$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/SentryReplayEvent;

    new-instance v2, Lio/sentry/SentryReplayEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryReplayEvent$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/SentrySpan;

    new-instance v2, Lio/sentry/protocol/SentrySpan$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/SentrySpan$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/SentryStackFrame;

    new-instance v2, Lio/sentry/protocol/SentryStackFrame$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/SentryStackFrame$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/SentryStackTrace;

    new-instance v2, Lio/sentry/protocol/SentryStackTrace$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/SentryStackTrace$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/SentryAppStartProfilingOptions;

    new-instance v2, Lio/sentry/SentryAppStartProfilingOptions$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryAppStartProfilingOptions$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/SentryThread;

    new-instance v2, Lio/sentry/protocol/SentryThread$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/SentryThread$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/SentryTransaction;

    new-instance v2, Lio/sentry/protocol/SentryTransaction$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/SentryTransaction$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/Session;

    new-instance v2, Lio/sentry/Session$Deserializer;

    invoke-direct {v2}, Lio/sentry/Session$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/SpanContext;

    new-instance v2, Lio/sentry/SpanContext$Deserializer;

    invoke-direct {v2}, Lio/sentry/SpanContext$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/SpanId;

    new-instance v2, Lio/sentry/SpanId$Deserializer;

    invoke-direct {v2}, Lio/sentry/SpanId$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/SpanStatus;

    new-instance v2, Lio/sentry/SpanStatus$Deserializer;

    invoke-direct {v2}, Lio/sentry/SpanStatus$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/User;

    new-instance v2, Lio/sentry/protocol/User$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/User$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/Geo;

    new-instance v2, Lio/sentry/protocol/Geo$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/Geo$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/UserFeedback;

    new-instance v2, Lio/sentry/UserFeedback$Deserializer;

    invoke-direct {v2}, Lio/sentry/UserFeedback$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/clientreport/ClientReport;

    new-instance v2, Lio/sentry/clientreport/ClientReport$Deserializer;

    invoke-direct {v2}, Lio/sentry/clientreport/ClientReport$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/ViewHierarchyNode;

    new-instance v2, Lio/sentry/protocol/ViewHierarchyNode$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/ViewHierarchyNode$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    const-class v1, Lio/sentry/protocol/ViewHierarchy;

    new-instance v2, Lio/sentry/protocol/ViewHierarchy$Deserializer;

    invoke-direct {v2}, Lio/sentry/protocol/ViewHierarchy$Deserializer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method private isKnownPrimitive(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 289
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Collection;

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/String;

    .line 291
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Map;

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 289
    :goto_1
    return v0
.end method

.method private serializeToString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "pretty"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 280
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Lio/sentry/JsonObjectWriter;

    iget-object v2, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getMaxDepth()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lio/sentry/JsonObjectWriter;-><init>(Ljava/io/Writer;I)V

    .line 281
    .local v1, "jsonObjectWriter":Lio/sentry/JsonObjectWriter;
    if-eqz p2, :cond_0

    .line 282
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Lio/sentry/JsonObjectWriter;->setIndent(Ljava/lang/String;)V

    .line 284
    :cond_0
    iget-object v2, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 285
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 180
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lio/sentry/JsonObjectReader;

    invoke-direct {v1, p1}, Lio/sentry/JsonObjectReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .local v1, "jsonObjectReader":Lio/sentry/JsonObjectReader;
    :try_start_1
    iget-object v2, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/JsonDeserializer;

    .line 182
    .local v2, "deserializer":Lio/sentry/JsonDeserializer;, "Lio/sentry/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 183
    iget-object v3, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lio/sentry/JsonDeserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object v3

    .line 184
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {p2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :try_start_2
    invoke-virtual {v1}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    return-object v4

    .line 185
    .end local v3    # "object":Ljava/lang/Object;
    :cond_0
    :try_start_3
    invoke-direct {p0, p2}, Lio/sentry/JsonSerializer;->isKnownPrimitive(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {v1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    :try_start_4
    invoke-virtual {v1}, Lio/sentry/JsonObjectReader;->close()V

    .line 186
    return-object v3

    .line 188
    :cond_1
    nop

    .line 190
    invoke-virtual {v1}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 188
    return-object v0

    .line 180
    .end local v2    # "deserializer":Lio/sentry/JsonDeserializer;, "Lio/sentry/JsonDeserializer<*>;"
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "reader":Ljava/io/Reader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_0
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 190
    .end local v1    # "jsonObjectReader":Lio/sentry/JsonObjectReader;
    .restart local p1    # "reader":Ljava/io/Reader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error when deserializing"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    return-object v0
.end method

.method public deserializeCollection(Ljava/io/Reader;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;
    .locals 4
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/JsonDeserializer<",
            "TR;>;)TT;"
        }
    .end annotation

    .line 160
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "elementDeserializer":Lio/sentry/JsonDeserializer;, "Lio/sentry/JsonDeserializer<TR;>;"
    :try_start_0
    new-instance v0, Lio/sentry/JsonObjectReader;

    invoke-direct {v0, p1}, Lio/sentry/JsonObjectReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 161
    .local v0, "jsonObjectReader":Lio/sentry/JsonObjectReader;
    :try_start_1
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    if-nez p3, :cond_0

    .line 164
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :try_start_2
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 164
    return-object v1

    .line 167
    :cond_0
    :try_start_3
    iget-object v1, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lio/sentry/JsonObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    :try_start_4
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 167
    return-object v1

    .line 169
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 171
    :try_start_6
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 169
    return-object v1

    .line 160
    :catchall_0
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "reader":Ljava/io/Reader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p3    # "elementDeserializer":Lio/sentry/JsonDeserializer;, "Lio/sentry/JsonDeserializer<TR;>;"
    :goto_0
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 171
    .end local v0    # "jsonObjectReader":Lio/sentry/JsonObjectReader;
    .restart local p1    # "reader":Ljava/io/Reader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p3    # "elementDeserializer":Lio/sentry/JsonDeserializer;, "Lio/sentry/JsonDeserializer<TR;>;"
    :catchall_2
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error when deserializing"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    const/4 v1, 0x0

    return-object v1
.end method

.method public deserializeEnvelope(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 198
    const-string v0, "The InputStream object is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    :try_start_0
    iget-object v0, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/IEnvelopeReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IEnvelopeReader;->read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error deserializing envelope."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    const/4 v1, 0x0

    return-object v1
.end method

.method public serialize(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/sentry/JsonSerializer;->serializeToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 233
    const-string v0, "\n"

    const-string v1, "The SentryEnvelope object is required."

    invoke-static {p1, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    const-string v1, "The Stream object is required."

    invoke-static {p2, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 238
    .local v1, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lio/sentry/JsonSerializer;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 242
    .local v2, "writer":Ljava/io/Writer;
    nop

    .line 243
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v3

    new-instance v4, Lio/sentry/JsonObjectWriter;

    iget-object v5, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 244
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getMaxDepth()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lio/sentry/JsonObjectWriter;-><init>(Ljava/io/Writer;I)V

    iget-object v5, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/sentry/SentryEnvelopeHeader;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 245
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/SentryEnvelopeItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .local v4, "item":Lio/sentry/SentryEnvelopeItem;
    :try_start_1
    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v5

    .line 252
    .local v5, "data":[B
    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v6

    new-instance v7, Lio/sentry/JsonObjectWriter;

    iget-object v8, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 253
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getMaxDepth()I

    move-result v8

    invoke-direct {v7, v2, v8}, Lio/sentry/JsonObjectWriter;-><init>(Ljava/io/Writer;I)V

    iget-object v8, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/sentry/SentryEnvelopeItemHeader;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 254
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 257
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 259
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .end local v5    # "data":[B
    goto :goto_1

    .line 260
    :catch_0
    move-exception v5

    .line 261
    .local v5, "exception":Ljava/lang/Exception;
    :try_start_2
    iget-object v6, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 262
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v8, "Failed to create envelope item. Dropping it."

    .line 263
    invoke-interface {v6, v7, v8, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    .end local v4    # "item":Lio/sentry/SentryEnvelopeItem;
    .end local v5    # "exception":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 268
    nop

    .line 269
    return-void

    .line 267
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 268
    throw v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 5
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    const-string v0, "The entity is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    const-string v0, "The Writer object is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {v0, v1}, Lio/sentry/ILogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnablePrettySerializationOutput()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/sentry/JsonSerializer;->serializeToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "serialized":Ljava/lang/String;
    iget-object v1, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Serializing object: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    .end local v0    # "serialized":Ljava/lang/String;
    :cond_0
    new-instance v0, Lio/sentry/JsonObjectWriter;

    iget-object v1, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getMaxDepth()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lio/sentry/JsonObjectWriter;-><init>(Ljava/io/Writer;I)V

    .line 219
    .local v0, "jsonObjectWriter":Lio/sentry/JsonObjectWriter;
    iget-object v1, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 220
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 221
    return-void
.end method
