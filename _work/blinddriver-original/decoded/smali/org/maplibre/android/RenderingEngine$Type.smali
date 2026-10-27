.class public final enum Lorg/maplibre/android/RenderingEngine$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/RenderingEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/maplibre/android/RenderingEngine$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/maplibre/android/RenderingEngine$Type;

.field public static final enum OPENGL:Lorg/maplibre/android/RenderingEngine$Type;

.field public static final enum VULKAN:Lorg/maplibre/android/RenderingEngine$Type;


# direct methods
.method private static synthetic $values()[Lorg/maplibre/android/RenderingEngine$Type;
    .locals 2

    sget-object v0, Lorg/maplibre/android/RenderingEngine$Type;->OPENGL:Lorg/maplibre/android/RenderingEngine$Type;

    sget-object v1, Lorg/maplibre/android/RenderingEngine$Type;->VULKAN:Lorg/maplibre/android/RenderingEngine$Type;

    filled-new-array {v0, v1}, [Lorg/maplibre/android/RenderingEngine$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/maplibre/android/RenderingEngine$Type;

    const-string v1, "OPENGL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/RenderingEngine$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/RenderingEngine$Type;->OPENGL:Lorg/maplibre/android/RenderingEngine$Type;

    new-instance v0, Lorg/maplibre/android/RenderingEngine$Type;

    const-string v1, "VULKAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/RenderingEngine$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/RenderingEngine$Type;->VULKAN:Lorg/maplibre/android/RenderingEngine$Type;

    invoke-static {}, Lorg/maplibre/android/RenderingEngine$Type;->$values()[Lorg/maplibre/android/RenderingEngine$Type;

    move-result-object v0

    sput-object v0, Lorg/maplibre/android/RenderingEngine$Type;->$VALUES:[Lorg/maplibre/android/RenderingEngine$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/maplibre/android/RenderingEngine$Type;
    .locals 1

    const-class v0, Lorg/maplibre/android/RenderingEngine$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/RenderingEngine$Type;

    return-object p0
.end method

.method public static values()[Lorg/maplibre/android/RenderingEngine$Type;
    .locals 1

    sget-object v0, Lorg/maplibre/android/RenderingEngine$Type;->$VALUES:[Lorg/maplibre/android/RenderingEngine$Type;

    invoke-virtual {v0}, [Lorg/maplibre/android/RenderingEngine$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/maplibre/android/RenderingEngine$Type;

    return-object v0
.end method
