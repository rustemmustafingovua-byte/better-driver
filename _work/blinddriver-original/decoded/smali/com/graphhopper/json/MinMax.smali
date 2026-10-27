.class public Lcom/graphhopper/json/MinMax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public max:D

.field public min:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/graphhopper/json/MinMax;->min:D

    iput-wide p3, p0, Lcom/graphhopper/json/MinMax;->max:D

    return-void
.end method
