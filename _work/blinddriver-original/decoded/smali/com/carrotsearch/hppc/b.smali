.class public final Lcom/carrotsearch/hppc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/c;
.implements Lo5/g;


# instance fields
.field public final synthetic a:Lo5/c;


# direct methods
.method public synthetic constructor <init>(Lo5/c;)V
    .locals 0

    iput-object p1, p0, Lcom/carrotsearch/hppc/b;->a:Lo5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(I)Z
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/b;->a:Lo5/c;

    invoke-interface {p0, p1}, Lo5/c;->apply(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
