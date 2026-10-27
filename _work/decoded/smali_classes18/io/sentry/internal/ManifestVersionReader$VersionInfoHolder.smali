.class public final Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;
.super Ljava/lang/Object;
.source "ManifestVersionReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/internal/ManifestVersionReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VersionInfoHolder"
.end annotation


# instance fields
.field private volatile sdkName:Ljava/lang/String;

.field private volatile sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;

    .line 125
    iget-object v0, p0, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;
    .param p1, "x1"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;->sdkVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;
    .param p1, "x1"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;->sdkName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getSdkName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;->sdkName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method
