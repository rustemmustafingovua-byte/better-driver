.class public interface abstract Lorg/maplibre/android/http/HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONNECTION_ERROR:I = 0x0

.field public static final PERMANENT_ERROR:I = 0x2

.field public static final TEMPORARY_ERROR:I = 0x1


# virtual methods
.method public abstract cancelRequest()V
.end method

.method public abstract executeRequest(Lorg/maplibre/android/http/HttpResponder;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method
