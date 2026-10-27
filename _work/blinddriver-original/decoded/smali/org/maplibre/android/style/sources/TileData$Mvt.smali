.class public final Lorg/maplibre/android/style/sources/TileData$Mvt;
.super Lorg/maplibre/android/style/sources/TileData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/style/sources/TileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mvt"
.end annotation


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/maplibre/android/style/sources/TileData;-><init>(Lj9/g;)V

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileData$Mvt;->data:[B

    return-void
.end method


# virtual methods
.method public final getData()[B
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileData$Mvt;->data:[B

    return-object p0
.end method
