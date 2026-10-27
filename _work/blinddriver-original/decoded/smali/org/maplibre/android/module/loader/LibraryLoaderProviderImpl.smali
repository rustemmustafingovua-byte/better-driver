.class public Lorg/maplibre/android/module/loader/LibraryLoaderProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/LibraryLoaderProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/module/loader/LibraryLoaderProviderImpl$SystemLibraryLoader;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultLibraryLoader()Lorg/maplibre/android/LibraryLoader;
    .locals 1

    new-instance p0, Lorg/maplibre/android/module/loader/LibraryLoaderProviderImpl$SystemLibraryLoader;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/maplibre/android/module/loader/LibraryLoaderProviderImpl$SystemLibraryLoader;-><init>(I)V

    return-object p0
.end method
