.class interface abstract Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;
.super Ljava/lang/Object;
.source "ApplicationExitInfoHistoryDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ApplicationExitInfoPolicy"
.end annotation


# virtual methods
.method public abstract buildReport(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getLastReportedTimestamp()Ljava/lang/Long;
.end method

.method public abstract markReported(J)V
.end method

.method public abstract matches(Landroid/app/ApplicationExitInfo;)Z
.end method

.method public abstract shouldReportHistorical()Z
.end method
