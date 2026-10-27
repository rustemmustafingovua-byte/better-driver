.class public Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/storage/CHStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LowWeightShortcut"
.end annotation


# instance fields
.field minWeight:D

.field nodeA:I

.field nodeB:I

.field shortcut:I

.field weight:D


# direct methods
.method public constructor <init>(IIIDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;->nodeA:I

    iput p2, p0, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;->nodeB:I

    iput p3, p0, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;->shortcut:I

    iput-wide p4, p0, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;->weight:D

    iput-wide p6, p0, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;->minWeight:D

    return-void
.end method
