.class public final Lorg/maplibre/android/RenderingEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/RenderingEngine$Type;
    }
.end annotation


# static fields
.field private static volatile currentType:Lorg/maplibre/android/RenderingEngine$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/maplibre/android/RenderingEngine$Type;->VULKAN:Lorg/maplibre/android/RenderingEngine$Type;

    sput-object v0, Lorg/maplibre/android/RenderingEngine;->currentType:Lorg/maplibre/android/RenderingEngine$Type;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentType()Lorg/maplibre/android/RenderingEngine$Type;
    .locals 1

    sget-object v0, Lorg/maplibre/android/RenderingEngine;->currentType:Lorg/maplibre/android/RenderingEngine$Type;

    return-object v0
.end method

.method public static getDefaultRenderingEngine(Landroid/content/Context;)Lorg/maplibre/android/RenderingEngine$Type;
    .locals 0

    sget-object p0, Lorg/maplibre/android/RenderingEngine$Type;->VULKAN:Lorg/maplibre/android/RenderingEngine$Type;

    return-object p0
.end method

.method public static setCurrentType(Lorg/maplibre/android/RenderingEngine$Type;)V
    .locals 3

    invoke-static {}, Lorg/maplibre/android/MapLibre;->hasInstance()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/maplibre/android/RenderingEngine$Type;->VULKAN:Lorg/maplibre/android/RenderingEngine$Type;

    if-ne p0, v0, :cond_0

    sput-object p0, Lorg/maplibre/android/RenderingEngine;->currentType:Lorg/maplibre/android/RenderingEngine$Type;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This MapLibre Android build supports only "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Use the multiBackend flavor to switch backends at runtime."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "RenderingEngine.setCurrentType() must be called before MapLibre.getInstance()."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
