.class public final synthetic Lp/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lp/a2;


# direct methods
.method public synthetic constructor <init>(Lp/a2;I)V
    .locals 0

    iput p2, p0, Lp/z1;->l:I

    iput-object p1, p0, Lp/z1;->m:Lp/a2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lp/z1;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lp/z1;->m:Lp/a2;

    iget-object p0, p0, Lp/a2;->a:Lr0/b1;

    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lp/z1;->m:Lp/a2;

    iget-object v0, p0, Lp/a2;->a:Lr0/b1;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v0

    iget-object p0, p0, Lp/a2;->e:Lr0/b1;

    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result p0

    if-ge v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
