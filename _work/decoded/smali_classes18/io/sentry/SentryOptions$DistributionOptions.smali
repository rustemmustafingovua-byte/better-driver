.class public final Lio/sentry/SentryOptions$DistributionOptions;
.super Ljava/lang/Object;
.source "SentryOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DistributionOptions"
.end annotation


# instance fields
.field public buildConfiguration:Ljava/lang/String;

.field public installGroupsOverride:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public orgAuthToken:Ljava/lang/String;

.field public orgSlug:Ljava/lang/String;

.field public projectSlug:Ljava/lang/String;

.field public sentryBaseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    const-string v0, ""

    iput-object v0, p0, Lio/sentry/SentryOptions$DistributionOptions;->orgAuthToken:Ljava/lang/String;

    .line 759
    iput-object v0, p0, Lio/sentry/SentryOptions$DistributionOptions;->orgSlug:Ljava/lang/String;

    .line 762
    iput-object v0, p0, Lio/sentry/SentryOptions$DistributionOptions;->projectSlug:Ljava/lang/String;

    .line 765
    const-string v0, "https://sentry.io"

    iput-object v0, p0, Lio/sentry/SentryOptions$DistributionOptions;->sentryBaseUrl:Ljava/lang/String;

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/SentryOptions$DistributionOptions;->buildConfiguration:Ljava/lang/String;

    .line 771
    iput-object v0, p0, Lio/sentry/SentryOptions$DistributionOptions;->installGroupsOverride:Ljava/util/List;

    return-void
.end method
