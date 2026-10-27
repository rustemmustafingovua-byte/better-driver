.class public Lorg/maplibre/android/ModuleProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/ModuleProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHttpRequest()Lorg/maplibre/android/http/HttpRequest;
    .locals 0

    new-instance p0, Lorg/maplibre/android/module/http/HttpRequestImpl;

    invoke-direct {p0}, Lorg/maplibre/android/module/http/HttpRequestImpl;-><init>()V

    return-object p0
.end method

.method public createLibraryLoaderProvider()Lorg/maplibre/android/LibraryLoaderProvider;
    .locals 0

    new-instance p0, Lorg/maplibre/android/module/loader/LibraryLoaderProviderImpl;

    invoke-direct {p0}, Lorg/maplibre/android/module/loader/LibraryLoaderProviderImpl;-><init>()V

    return-object p0
.end method
