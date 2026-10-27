.class public Lcom/baseflow/geolocator/location/FlutterLocationServiceListener;
.super Ljava/lang/Object;
.source "FlutterLocationServiceListener.java"

# interfaces
.implements Lcom/baseflow/geolocator/location/LocationServiceListener;


# instance fields
.field private result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/baseflow/geolocator/location/FlutterLocationServiceListener;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 12
    return-void
.end method


# virtual methods
.method public onLocationServiceError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 21
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FlutterLocationServiceListener;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public onLocationServiceResult(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 16
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FlutterLocationServiceListener;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 17
    return-void
.end method
