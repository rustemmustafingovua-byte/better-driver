.class final Lio/sentry/android/replay/video/SimpleVideoEncoder$hasExynosCodec$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SimpleVideoEncoder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/video/SimpleVideoEncoder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/video/MuxerConfig;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimpleVideoEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleVideoEncoder.kt\nio/sentry/android/replay/video/SimpleVideoEncoder$hasExynosCodec$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,362:1\n12574#2,2:363\n*S KotlinDebug\n*F\n+ 1 SimpleVideoEncoder.kt\nio/sentry/android/replay/video/SimpleVideoEncoder$hasExynosCodec$2\n*L\n71#1:363,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/sentry/android/replay/video/SimpleVideoEncoder$hasExynosCodec$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/replay/video/SimpleVideoEncoder$hasExynosCodec$2;

    invoke-direct {v0}, Lio/sentry/android/replay/video/SimpleVideoEncoder$hasExynosCodec$2;-><init>()V

    sput-object v0, Lio/sentry/android/replay/video/SimpleVideoEncoder$hasExynosCodec$2;->INSTANCE:Lio/sentry/android/replay/video/SimpleVideoEncoder$hasExynosCodec$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 12

    .line 71
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    const-string v2, "getCodecInfos(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .local v0, "$this$any$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 363
    .local v2, "$i$f$any":I
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroid/media/MediaCodecInfo;

    .local v6, "it":Landroid/media/MediaCodecInfo;
    const/4 v7, 0x0

    .line 71
    .local v7, "$i$a$-any-SimpleVideoEncoder$hasExynosCodec$2$1":I
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getName(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/CharSequence;

    const-string v9, "c2.exynos"

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v8, v9, v1, v10, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    .line 363
    .end local v6    # "it":Landroid/media/MediaCodecInfo;
    .end local v7    # "$i$a$-any-SimpleVideoEncoder$hasExynosCodec$2$1":I
    if-eqz v6, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 364
    :cond_1
    nop

    .end local v0    # "$this$any$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$any":I
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lio/sentry/android/replay/video/SimpleVideoEncoder$hasExynosCodec$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
