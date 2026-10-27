.class public final Lio/sentry/UpdateStatus$NewRelease;
.super Lio/sentry/UpdateStatus;
.source "UpdateStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/UpdateStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewRelease"
.end annotation


# instance fields
.field private final info:Lio/sentry/UpdateInfo;


# direct methods
.method public constructor <init>(Lio/sentry/UpdateInfo;)V
    .locals 0
    .param p1, "info"    # Lio/sentry/UpdateInfo;

    .line 30
    invoke-direct {p0}, Lio/sentry/UpdateStatus;-><init>()V

    .line 31
    iput-object p1, p0, Lio/sentry/UpdateStatus$NewRelease;->info:Lio/sentry/UpdateInfo;

    .line 32
    return-void
.end method


# virtual methods
.method public getInfo()Lio/sentry/UpdateInfo;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/sentry/UpdateStatus$NewRelease;->info:Lio/sentry/UpdateInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateStatus.NewRelease{info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/UpdateStatus$NewRelease;->info:Lio/sentry/UpdateInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
