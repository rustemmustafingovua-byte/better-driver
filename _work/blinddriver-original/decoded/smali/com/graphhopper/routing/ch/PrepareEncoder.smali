.class public Lcom/graphhopper/routing/ch/PrepareEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final scBwdDir:I = 0x2

.field private static final scDirMask:I = 0x3

.field private static final scFwdDir:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScBwdDir()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static getScDirMask()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public static getScFwdDir()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
