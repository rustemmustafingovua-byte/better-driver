.class Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;
.super Ljava/lang/Object;
.source "NetworkBodyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Result"
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private errored:Z

.field private hitMaxDepth:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/util/network/NetworkBodyParser$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/util/network/NetworkBodyParser$1;

    .line 203
    invoke-direct {p0}, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    .line 203
    iget-object v0, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->data:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 203
    iput-object p1, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->data:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;)Z
    .locals 1
    .param p0, "x0"    # Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    .line 203
    iget-boolean v0, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->errored:Z

    return v0
.end method

.method static synthetic access$102(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;
    .param p1, "x1"    # Z

    .line 203
    iput-boolean p1, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->errored:Z

    return p1
.end method

.method static synthetic access$200(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;)Z
    .locals 1
    .param p0, "x0"    # Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;

    .line 203
    iget-boolean v0, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->hitMaxDepth:Z

    return v0
.end method

.method static synthetic access$202(Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;
    .param p1, "x1"    # Z

    .line 203
    iput-boolean p1, p0, Lio/sentry/util/network/NetworkBodyParser$SaferJsonParser$Result;->hitMaxDepth:Z

    return p1
.end method
