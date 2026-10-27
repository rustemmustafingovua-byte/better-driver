.class public final enum Lorg/maplibre/android/tile/TileOperation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/maplibre/android/tile/TileOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/maplibre/android/tile/TileOperation;

.field public static final enum Cancelled:Lorg/maplibre/android/tile/TileOperation;

.field public static final enum EndParse:Lorg/maplibre/android/tile/TileOperation;

.field public static final enum Error:Lorg/maplibre/android/tile/TileOperation;

.field public static final enum LoadFromCache:Lorg/maplibre/android/tile/TileOperation;

.field public static final enum LoadFromNetwork:Lorg/maplibre/android/tile/TileOperation;

.field public static final enum NullOp:Lorg/maplibre/android/tile/TileOperation;

.field public static final enum RequestedFromCache:Lorg/maplibre/android/tile/TileOperation;

.field public static final enum RequestedFromNetwork:Lorg/maplibre/android/tile/TileOperation;

.field public static final enum StartParse:Lorg/maplibre/android/tile/TileOperation;


# direct methods
.method private static synthetic $values()[Lorg/maplibre/android/tile/TileOperation;
    .locals 9

    sget-object v0, Lorg/maplibre/android/tile/TileOperation;->RequestedFromCache:Lorg/maplibre/android/tile/TileOperation;

    sget-object v1, Lorg/maplibre/android/tile/TileOperation;->RequestedFromNetwork:Lorg/maplibre/android/tile/TileOperation;

    sget-object v2, Lorg/maplibre/android/tile/TileOperation;->LoadFromNetwork:Lorg/maplibre/android/tile/TileOperation;

    sget-object v3, Lorg/maplibre/android/tile/TileOperation;->LoadFromCache:Lorg/maplibre/android/tile/TileOperation;

    sget-object v4, Lorg/maplibre/android/tile/TileOperation;->StartParse:Lorg/maplibre/android/tile/TileOperation;

    sget-object v5, Lorg/maplibre/android/tile/TileOperation;->EndParse:Lorg/maplibre/android/tile/TileOperation;

    sget-object v6, Lorg/maplibre/android/tile/TileOperation;->Error:Lorg/maplibre/android/tile/TileOperation;

    sget-object v7, Lorg/maplibre/android/tile/TileOperation;->Cancelled:Lorg/maplibre/android/tile/TileOperation;

    sget-object v8, Lorg/maplibre/android/tile/TileOperation;->NullOp:Lorg/maplibre/android/tile/TileOperation;

    filled-new-array/range {v0 .. v8}, [Lorg/maplibre/android/tile/TileOperation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/maplibre/android/tile/TileOperation;

    const-string v1, "RequestedFromCache"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/tile/TileOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/tile/TileOperation;->RequestedFromCache:Lorg/maplibre/android/tile/TileOperation;

    new-instance v0, Lorg/maplibre/android/tile/TileOperation;

    const-string v1, "RequestedFromNetwork"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/tile/TileOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/tile/TileOperation;->RequestedFromNetwork:Lorg/maplibre/android/tile/TileOperation;

    new-instance v0, Lorg/maplibre/android/tile/TileOperation;

    const-string v1, "LoadFromNetwork"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/tile/TileOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/tile/TileOperation;->LoadFromNetwork:Lorg/maplibre/android/tile/TileOperation;

    new-instance v0, Lorg/maplibre/android/tile/TileOperation;

    const-string v1, "LoadFromCache"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/tile/TileOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/tile/TileOperation;->LoadFromCache:Lorg/maplibre/android/tile/TileOperation;

    new-instance v0, Lorg/maplibre/android/tile/TileOperation;

    const-string v1, "StartParse"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/tile/TileOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/tile/TileOperation;->StartParse:Lorg/maplibre/android/tile/TileOperation;

    new-instance v0, Lorg/maplibre/android/tile/TileOperation;

    const-string v1, "EndParse"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/tile/TileOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/tile/TileOperation;->EndParse:Lorg/maplibre/android/tile/TileOperation;

    new-instance v0, Lorg/maplibre/android/tile/TileOperation;

    const-string v1, "Error"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/tile/TileOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/tile/TileOperation;->Error:Lorg/maplibre/android/tile/TileOperation;

    new-instance v0, Lorg/maplibre/android/tile/TileOperation;

    const-string v1, "Cancelled"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/tile/TileOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/tile/TileOperation;->Cancelled:Lorg/maplibre/android/tile/TileOperation;

    new-instance v0, Lorg/maplibre/android/tile/TileOperation;

    const-string v1, "NullOp"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/tile/TileOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/tile/TileOperation;->NullOp:Lorg/maplibre/android/tile/TileOperation;

    invoke-static {}, Lorg/maplibre/android/tile/TileOperation;->$values()[Lorg/maplibre/android/tile/TileOperation;

    move-result-object v0

    sput-object v0, Lorg/maplibre/android/tile/TileOperation;->$VALUES:[Lorg/maplibre/android/tile/TileOperation;

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

.method public static valueOf(Ljava/lang/String;)Lorg/maplibre/android/tile/TileOperation;
    .locals 1

    const-class v0, Lorg/maplibre/android/tile/TileOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/tile/TileOperation;

    return-object p0
.end method

.method public static values()[Lorg/maplibre/android/tile/TileOperation;
    .locals 1

    sget-object v0, Lorg/maplibre/android/tile/TileOperation;->$VALUES:[Lorg/maplibre/android/tile/TileOperation;

    invoke-virtual {v0}, [Lorg/maplibre/android/tile/TileOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/maplibre/android/tile/TileOperation;

    return-object v0
.end method
