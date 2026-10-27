.class public final synthetic Lp/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lp/y1;


# direct methods
.method public synthetic constructor <init>(Lp/y1;I)V
    .locals 0

    iput p2, p0, Lp/x1;->l:I

    iput-object p1, p0, Lp/x1;->m:Lp/y1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lp/x1;->l:I

    iget-object p0, p0, Lp/x1;->m:Lp/y1;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lp/y1;->z:Lp/a2;

    iget-object p0, p0, Lp/a2;->e:Lr0/b1;

    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lp/y1;->z:Lp/a2;

    iget-object p0, p0, Lp/a2;->a:Lr0/b1;

    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result p0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
