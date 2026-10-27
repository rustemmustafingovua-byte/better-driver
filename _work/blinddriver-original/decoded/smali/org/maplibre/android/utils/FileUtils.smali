.class public Lorg/maplibre/android/utils/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/utils/FileUtils$OnCheckFileWritePermissionListener;,
        Lorg/maplibre/android/utils/FileUtils$CheckFileWritePermissionTask;,
        Lorg/maplibre/android/utils/FileUtils$OnCheckFileReadPermissionListener;,
        Lorg/maplibre/android/utils/FileUtils$CheckFileReadPermissionTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/maplibre/android/utils/FileUtils$1;

    invoke-direct {v1, p0}, Lorg/maplibre/android/utils/FileUtils$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
