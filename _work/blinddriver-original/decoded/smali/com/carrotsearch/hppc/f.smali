.class public final Lcom/carrotsearch/hppc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/f;
.implements Lo5/a;
.implements Lo5/d;


# instance fields
.field public final synthetic a:Lo5/f;


# direct methods
.method public synthetic constructor <init>(Lo5/f;)V
    .locals 0

    iput-object p1, p0, Lcom/carrotsearch/hppc/f;->a:Lo5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(J)Z
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/f;->a:Lo5/f;

    invoke-interface {p0, p1, p2}, Lo5/f;->apply(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
