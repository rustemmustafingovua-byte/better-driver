.class public final Lio/sentry/UpdateStatus$UpToDate;
.super Lio/sentry/UpdateStatus;
.source "UpdateStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/UpdateStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpToDate"
.end annotation


# static fields
.field private static final INSTANCE:Lio/sentry/UpdateStatus$UpToDate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lio/sentry/UpdateStatus$UpToDate;

    invoke-direct {v0}, Lio/sentry/UpdateStatus$UpToDate;-><init>()V

    sput-object v0, Lio/sentry/UpdateStatus$UpToDate;->INSTANCE:Lio/sentry/UpdateStatus$UpToDate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lio/sentry/UpdateStatus;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/UpdateStatus$UpToDate;
    .locals 1

    .line 17
    sget-object v0, Lio/sentry/UpdateStatus$UpToDate;->INSTANCE:Lio/sentry/UpdateStatus$UpToDate;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "UpdateStatus.UpToDate{}"

    return-object v0
.end method
