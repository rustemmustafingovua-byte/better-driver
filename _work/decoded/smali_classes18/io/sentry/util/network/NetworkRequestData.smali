.class public final Lio/sentry/util/network/NetworkRequestData;
.super Ljava/lang/Object;
.source "NetworkRequestData.java"


# instance fields
.field private final method:Ljava/lang/String;

.field private request:Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

.field private requestBodySize:Ljava/lang/Long;

.field private response:Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

.field private responseBodySize:Ljava/lang/Long;

.field private statusCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/sentry/util/network/NetworkRequestData;->method:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/sentry/util/network/NetworkRequestData;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/sentry/util/network/NetworkRequestData;->request:Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

    return-object v0
.end method

.method public getRequestBodySize()Ljava/lang/Long;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/sentry/util/network/NetworkRequestData;->requestBodySize:Ljava/lang/Long;

    return-object v0
.end method

.method public getResponse()Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/sentry/util/network/NetworkRequestData;->response:Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

    return-object v0
.end method

.method public getResponseBodySize()Ljava/lang/Long;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/sentry/util/network/NetworkRequestData;->responseBodySize:Ljava/lang/Long;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/sentry/util/network/NetworkRequestData;->statusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public setRequestDetails(Lio/sentry/util/network/ReplayNetworkRequestOrResponse;)V
    .locals 1
    .param p1, "requestData"    # Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

    .line 55
    iput-object p1, p0, Lio/sentry/util/network/NetworkRequestData;->request:Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

    .line 56
    invoke-virtual {p1}, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->getSize()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/util/network/NetworkRequestData;->requestBodySize:Ljava/lang/Long;

    .line 57
    return-void
.end method

.method public setResponseDetails(ILio/sentry/util/network/ReplayNetworkRequestOrResponse;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "responseData"    # Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/util/network/NetworkRequestData;->statusCode:Ljava/lang/Integer;

    .line 66
    iput-object p2, p0, Lio/sentry/util/network/NetworkRequestData;->response:Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

    .line 67
    invoke-virtual {p2}, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->getSize()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/util/network/NetworkRequestData;->responseBodySize:Ljava/lang/Long;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkRequestData{method=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/util/network/NetworkRequestData;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/util/network/NetworkRequestData;->statusCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestBodySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/util/network/NetworkRequestData;->requestBodySize:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseBodySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/util/network/NetworkRequestData;->responseBodySize:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/util/network/NetworkRequestData;->request:Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/util/network/NetworkRequestData;->response:Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
