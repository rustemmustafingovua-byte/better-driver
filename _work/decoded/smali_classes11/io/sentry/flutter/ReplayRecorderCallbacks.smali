.class public interface abstract Lio/sentry/flutter/ReplayRecorderCallbacks;
.super Ljava/lang/Object;
.source "ReplayRecorderCallbacks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0008\u0010\u000b\u001a\u00020\u0003H&J\u0008\u0010\u000c\u001a\u00020\u0003H&J \u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH&\u00a8\u0006\u0012\u00c0\u0006\u0003"
    }
    d2 = {
        "Lio/sentry/flutter/ReplayRecorderCallbacks;",
        "",
        "replayStarted",
        "",
        "replayId",
        "",
        "replayIsBuffering",
        "",
        "replayResumed",
        "replayStateChanged",
        "replayPaused",
        "replayStopped",
        "replayReset",
        "replayConfigChanged",
        "width",
        "",
        "height",
        "frameRate",
        "sentry_flutter_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract replayConfigChanged(III)V
.end method

.method public abstract replayPaused()V
.end method

.method public abstract replayReset()V
.end method

.method public abstract replayResumed()V
.end method

.method public abstract replayStarted(Ljava/lang/String;Z)V
.end method

.method public abstract replayStateChanged(Ljava/lang/String;Z)V
.end method

.method public abstract replayStopped()V
.end method
