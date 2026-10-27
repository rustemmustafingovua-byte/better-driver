.class public final Lio/sentry/android/replay/RecordingMetadata;
.super Ljava/lang/Object;
.source "ReplayCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J9\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/sentry/android/replay/RecordingMetadata;",
        "",
        "release",
        "",
        "environment",
        "dist",
        "sdkVersion",
        "Lio/sentry/protocol/SdkVersion;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SdkVersion;)V",
        "getDist",
        "()Ljava/lang/String;",
        "getEnvironment",
        "getRelease",
        "getSdkVersion",
        "()Lio/sentry/protocol/SdkVersion;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final dist:Ljava/lang/String;

.field private final environment:Ljava/lang/String;

.field private final release:Ljava/lang/String;

.field private final sdkVersion:Lio/sentry/protocol/SdkVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/RecordingMetadata;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SdkVersion;)V
    .locals 0
    .param p1, "release"    # Ljava/lang/String;
    .param p2, "environment"    # Ljava/lang/String;
    .param p3, "dist"    # Ljava/lang/String;
    .param p4, "sdkVersion"    # Lio/sentry/protocol/SdkVersion;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-object p1, p0, Lio/sentry/android/replay/RecordingMetadata;->release:Ljava/lang/String;

    .line 535
    iput-object p2, p0, Lio/sentry/android/replay/RecordingMetadata;->environment:Ljava/lang/String;

    .line 536
    iput-object p3, p0, Lio/sentry/android/replay/RecordingMetadata;->dist:Ljava/lang/String;

    .line 537
    iput-object p4, p0, Lio/sentry/android/replay/RecordingMetadata;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    .line 533
    return-void
.end method

.method public static synthetic copy$default(Lio/sentry/android/replay/RecordingMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SdkVersion;ILjava/lang/Object;)Lio/sentry/android/replay/RecordingMetadata;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lio/sentry/android/replay/RecordingMetadata;->release:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lio/sentry/android/replay/RecordingMetadata;->environment:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lio/sentry/android/replay/RecordingMetadata;->dist:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lio/sentry/android/replay/RecordingMetadata;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/sentry/android/replay/RecordingMetadata;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SdkVersion;)Lio/sentry/android/replay/RecordingMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/RecordingMetadata;->release:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/RecordingMetadata;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/RecordingMetadata;->dist:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lio/sentry/protocol/SdkVersion;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/RecordingMetadata;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SdkVersion;)Lio/sentry/android/replay/RecordingMetadata;
    .locals 1

    new-instance v0, Lio/sentry/android/replay/RecordingMetadata;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/sentry/android/replay/RecordingMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SdkVersion;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/sentry/android/replay/RecordingMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/sentry/android/replay/RecordingMetadata;

    iget-object v3, p0, Lio/sentry/android/replay/RecordingMetadata;->release:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/android/replay/RecordingMetadata;->release:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/sentry/android/replay/RecordingMetadata;->environment:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/android/replay/RecordingMetadata;->environment:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lio/sentry/android/replay/RecordingMetadata;->dist:Ljava/lang/String;

    iget-object v4, v1, Lio/sentry/android/replay/RecordingMetadata;->dist:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lio/sentry/android/replay/RecordingMetadata;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    iget-object v1, v1, Lio/sentry/android/replay/RecordingMetadata;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDist()Ljava/lang/String;
    .locals 1

    .line 536
    iget-object v0, p0, Lio/sentry/android/replay/RecordingMetadata;->dist:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnvironment()Ljava/lang/String;
    .locals 1

    .line 535
    iget-object v0, p0, Lio/sentry/android/replay/RecordingMetadata;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public final getRelease()Ljava/lang/String;
    .locals 1

    .line 534
    iget-object v0, p0, Lio/sentry/android/replay/RecordingMetadata;->release:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 1

    .line 537
    iget-object v0, p0, Lio/sentry/android/replay/RecordingMetadata;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lio/sentry/android/replay/RecordingMetadata;->release:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/RecordingMetadata;->release:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lio/sentry/android/replay/RecordingMetadata;->environment:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lio/sentry/android/replay/RecordingMetadata;->environment:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lio/sentry/android/replay/RecordingMetadata;->dist:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lio/sentry/android/replay/RecordingMetadata;->dist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lio/sentry/android/replay/RecordingMetadata;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lio/sentry/android/replay/RecordingMetadata;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    invoke-virtual {v1}, Lio/sentry/protocol/SdkVersion;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordingMetadata(release="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/RecordingMetadata;->release:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", environment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/RecordingMetadata;->environment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/RecordingMetadata;->dist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/RecordingMetadata;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
