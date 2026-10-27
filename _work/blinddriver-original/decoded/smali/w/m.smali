.class public final synthetic Lw/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lw/p;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lw/m;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lx/d0;

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld1/g;->e()Li9/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
