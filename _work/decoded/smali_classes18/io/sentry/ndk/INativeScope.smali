.class public interface abstract Lio/sentry/ndk/INativeScope;
.super Ljava/lang/Object;
.source "INativeScope.java"


# virtual methods
.method public abstract addAttachment(Ljava/lang/String;)V
.end method

.method public abstract addAttachmentBytes([BLjava/lang/String;)V
.end method

.method public abstract addBreadcrumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clearAttachments()V
.end method

.method public abstract removeExtra(Ljava/lang/String;)V
.end method

.method public abstract removeTag(Ljava/lang/String;)V
.end method

.method public abstract removeUser()V
.end method

.method public abstract setEnvironment(Ljava/lang/String;)V
.end method

.method public abstract setExtra(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setTrace(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
