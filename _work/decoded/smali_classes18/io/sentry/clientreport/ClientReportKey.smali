.class final Lio/sentry/clientreport/ClientReportKey;
.super Ljava/lang/Object;
.source "ClientReportKey.java"


# instance fields
.field private final category:Ljava/lang/String;

.field private final reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/sentry/clientreport/ClientReportKey;->reason:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lio/sentry/clientreport/ClientReportKey;->category:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 27
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lio/sentry/clientreport/ClientReportKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 29
    :cond_1
    move-object v1, p1

    check-cast v1, Lio/sentry/clientreport/ClientReportKey;

    .line 30
    .local v1, "that":Lio/sentry/clientreport/ClientReportKey;
    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportKey;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lio/sentry/clientreport/ClientReportKey;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31
    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportKey;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lio/sentry/clientreport/ClientReportKey;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 30
    :goto_0
    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/sentry/clientreport/ClientReportKey;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/sentry/clientreport/ClientReportKey;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 36
    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportKey;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportKey;->getCategory()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
