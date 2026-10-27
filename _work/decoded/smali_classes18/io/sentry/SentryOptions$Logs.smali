.class public final Lio/sentry/SentryOptions$Logs;
.super Ljava/lang/Object;
.source "SentryOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Logs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryOptions$Logs$BeforeSendLogCallback;
    }
.end annotation


# instance fields
.field private beforeSend:Lio/sentry/SentryOptions$Logs$BeforeSendLogCallback;

.field private enable:Z

.field private loggerBatchProcessorFactory:Lio/sentry/logger/ILoggerBatchProcessorFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/SentryOptions$Logs;->enable:Z

    .line 4123
    new-instance v0, Lio/sentry/logger/DefaultLoggerBatchProcessorFactory;

    invoke-direct {v0}, Lio/sentry/logger/DefaultLoggerBatchProcessorFactory;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions$Logs;->loggerBatchProcessorFactory:Lio/sentry/logger/ILoggerBatchProcessorFactory;

    return-void
.end method


# virtual methods
.method public getBeforeSend()Lio/sentry/SentryOptions$Logs$BeforeSendLogCallback;
    .locals 1

    .line 4152
    iget-object v0, p0, Lio/sentry/SentryOptions$Logs;->beforeSend:Lio/sentry/SentryOptions$Logs$BeforeSendLogCallback;

    return-object v0
.end method

.method public getLoggerBatchProcessorFactory()Lio/sentry/logger/ILoggerBatchProcessorFactory;
    .locals 1

    .line 4166
    iget-object v0, p0, Lio/sentry/SentryOptions$Logs;->loggerBatchProcessorFactory:Lio/sentry/logger/ILoggerBatchProcessorFactory;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 4133
    iget-boolean v0, p0, Lio/sentry/SentryOptions$Logs;->enable:Z

    return v0
.end method

.method public setBeforeSend(Lio/sentry/SentryOptions$Logs$BeforeSendLogCallback;)V
    .locals 0
    .param p1, "beforeSendLog"    # Lio/sentry/SentryOptions$Logs$BeforeSendLogCallback;

    .line 4161
    iput-object p1, p0, Lio/sentry/SentryOptions$Logs;->beforeSend:Lio/sentry/SentryOptions$Logs$BeforeSendLogCallback;

    .line 4162
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enableLogs"    # Z

    .line 4143
    iput-boolean p1, p0, Lio/sentry/SentryOptions$Logs;->enable:Z

    .line 4144
    return-void
.end method

.method public setLoggerBatchProcessorFactory(Lio/sentry/logger/ILoggerBatchProcessorFactory;)V
    .locals 0
    .param p1, "loggerBatchProcessorFactory"    # Lio/sentry/logger/ILoggerBatchProcessorFactory;

    .line 4172
    iput-object p1, p0, Lio/sentry/SentryOptions$Logs;->loggerBatchProcessorFactory:Lio/sentry/logger/ILoggerBatchProcessorFactory;

    .line 4173
    return-void
.end method
