.class public final enum Lcom/carrotsearch/hppc/r;
.super Lcom/carrotsearch/hppc/s;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "NONE"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/carrotsearch/hppc/n;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/carrotsearch/hppc/n;-><init>(I)V

    return-object p0
.end method
