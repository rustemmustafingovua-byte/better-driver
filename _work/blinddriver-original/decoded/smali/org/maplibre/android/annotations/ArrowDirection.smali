.class Lorg/maplibre/android/annotations/ArrowDirection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x1

.field static final TOP:I = 0x2


# instance fields
.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/maplibre/android/annotations/ArrowDirection;->value:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/annotations/ArrowDirection;->value:I

    return p0
.end method
