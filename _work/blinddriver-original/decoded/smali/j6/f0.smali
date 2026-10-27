.class public final Lj6/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj6/h0;


# direct methods
.method public synthetic constructor <init>(Lj6/h0;I)V
    .locals 0

    iput p2, p0, Lj6/f0;->a:I

    iput-object p1, p0, Lj6/f0;->b:Lj6/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj6/h;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj6/f0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lj6/f0;->b:Lj6/h0;

    iget-object v0, p0, Lj6/h0;->o:Lb6/d;

    invoke-virtual {v0, p1}, Lb6/d;->D(Lj6/a;)Lj6/d0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lj6/h0;->o:Lb6/d;

    invoke-virtual {p0, p1, v0}, Lb6/d;->E(Lj6/a;Lj6/d0;)Lj6/d0;

    move-result-object v0

    :cond_0
    return-object v0

    :pswitch_0
    iget-object p0, p0, Lj6/f0;->b:Lj6/h0;

    iget-object p0, p0, Lj6/h0;->o:Lb6/d;

    invoke-virtual {p0, p1}, Lb6/d;->u0(Lj6/h;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lj6/f0;->b:Lj6/h0;

    iget-object p0, p0, Lj6/h0;->o:Lb6/d;

    invoke-virtual {p0, p1}, Lb6/d;->T(Lj6/h;)Lb6/b;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lj6/f0;->b:Lj6/h0;

    iget-object p0, p0, Lj6/h0;->o:Lb6/d;

    invoke-virtual {p0, p1}, Lb6/d;->i0(Lj6/a;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
