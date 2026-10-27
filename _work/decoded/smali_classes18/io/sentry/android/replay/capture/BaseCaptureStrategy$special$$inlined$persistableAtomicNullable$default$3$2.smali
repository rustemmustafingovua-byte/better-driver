.class public final Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseCaptureStrategy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseCaptureStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseCaptureStrategy.kt\nio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2$setValue$1\n+ 2 BaseCaptureStrategy.kt\nio/sentry/android/replay/capture/BaseCaptureStrategy\n*L\n1#1,276:1\n101#2,6:277\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "invoke",
        "io/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2$setValue$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $oldValue:Ljava/lang/Object;

.field final synthetic $propertyName:Ljava/lang/String;

.field final synthetic $value:Ljava/lang/Object;

.field final synthetic this$0:Lio/sentry/android/replay/capture/BaseCaptureStrategy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;->$propertyName:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;->$oldValue:Ljava/lang/Object;

    iput-object p3, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;->$value:Ljava/lang/Object;

    iput-object p4, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;->this$0:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    const/4 p4, 0x0

    invoke-direct {p0, p4}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 276
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;->$oldValue:Ljava/lang/Object;

    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;->$value:Ljava/lang/Object;

    check-cast v1, Lio/sentry/android/replay/RecordingMetadata;

    .local v1, "newValue":Lio/sentry/android/replay/RecordingMetadata;
    check-cast v0, Lio/sentry/android/replay/RecordingMetadata;

    const/4 v0, 0x0

    .line 277
    .local v0, "$i$a$-persistableAtomicNullable$default-BaseCaptureStrategy$recordingMetadata$2":I
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;->this$0:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/sentry/android/replay/RecordingMetadata;->getRelease()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const-string v5, "replay.release"

    invoke-static {v2, v5, v4}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->access$persistMetadataValue(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;->this$0:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/sentry/android/replay/RecordingMetadata;->getEnvironment()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    const-string v5, "replay.environment"

    invoke-static {v2, v5, v4}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->access$persistMetadataValue(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;->this$0:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/sentry/android/replay/RecordingMetadata;->getDist()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    const-string v5, "replay.dist"

    invoke-static {v2, v5, v4}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->access$persistMetadataValue(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;->this$0:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lio/sentry/android/replay/RecordingMetadata;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v3

    :goto_3
    const-string v5, "replay.sdk-name"

    invoke-static {v2, v5, v4}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->access$persistMetadataValue(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;->this$0:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lio/sentry/android/replay/RecordingMetadata;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lio/sentry/protocol/SdkVersion;->getVersion()Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v4, "replay.sdk-version"

    invoke-static {v2, v4, v3}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->access$persistMetadataValue(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    nop

    .line 276
    .end local v0    # "$i$a$-persistableAtomicNullable$default-BaseCaptureStrategy$recordingMetadata$2":I
    .end local v1    # "newValue":Lio/sentry/android/replay/RecordingMetadata;
    return-void
.end method
