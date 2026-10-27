.class public final Lio/sentry/ndk/NativeScope;
.super Ljava/lang/Object;
.source "NativeScope.java"

# interfaces
.implements Lio/sentry/ndk/INativeScope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeAddAttachment(Ljava/lang/String;)V
.end method

.method public static native nativeAddAttachmentBytes([BLjava/lang/String;)V
.end method

.method public static native nativeAddBreadcrumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeClearAttachments()V
.end method

.method public static native nativeRemoveExtra(Ljava/lang/String;)V
.end method

.method public static native nativeRemoveTag(Ljava/lang/String;)V
.end method

.method public static native nativeRemoveUser()V
.end method

.method public static native nativeSetEnvironment(Ljava/lang/String;)V
.end method

.method public static native nativeSetExtra(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetTrace(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public addAttachment(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lio/sentry/ndk/NativeScope;->nativeAddAttachment(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public addAttachmentBytes([BLjava/lang/String;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "filename"    # Ljava/lang/String;

    .line 87
    invoke-static {p1, p2}, Lio/sentry/ndk/NativeScope;->nativeAddAttachmentBytes([BLjava/lang/String;)V

    .line 88
    return-void
.end method

.method public addBreadcrumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "timestamp"    # Ljava/lang/String;
    .param p6, "data"    # Ljava/lang/String;

    .line 68
    invoke-static/range {p1 .. p6}, Lio/sentry/ndk/NativeScope;->nativeAddBreadcrumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public clearAttachments()V
    .locals 0

    .line 92
    invoke-static {}, Lio/sentry/ndk/NativeScope;->nativeClearAttachments()V

    .line 93
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lio/sentry/ndk/NativeScope;->nativeRemoveExtra(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lio/sentry/ndk/NativeScope;->nativeRemoveTag(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public removeUser()V
    .locals 0

    .line 62
    invoke-static {}, Lio/sentry/ndk/NativeScope;->nativeRemoveUser()V

    .line 63
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0
    .param p1, "environment"    # Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lio/sentry/ndk/NativeScope;->nativeSetEnvironment(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 42
    invoke-static {p1, p2}, Lio/sentry/ndk/NativeScope;->nativeSetExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 32
    invoke-static {p1, p2}, Lio/sentry/ndk/NativeScope;->nativeSetTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public setTrace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "traceId"    # Ljava/lang/String;
    .param p2, "parentSpanId"    # Ljava/lang/String;

    .line 77
    invoke-static {p1, p2}, Lio/sentry/ndk/NativeScope;->nativeSetTrace(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "ipAddress"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;

    .line 57
    invoke-static {p1, p2, p3, p4}, Lio/sentry/ndk/NativeScope;->nativeSetUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
