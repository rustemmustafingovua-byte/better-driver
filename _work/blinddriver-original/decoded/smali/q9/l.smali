.class public final Lq9/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lk9/a;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lq9/l;->l:I

    iput-object p2, p0, Lq9/l;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lq9/l;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lq9/b;

    iget-object p0, p0, Lq9/l;->m:Ljava/lang/Object;

    check-cast p0, Lod/x4;

    iget-object p0, p0, Lod/x4;->m:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lj9/n;->k([Ljava/lang/Object;)Lj9/b;

    move-result-object p0

    invoke-direct {v0, p0}, Lq9/b;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, Lq9/l;->m:Ljava/lang/Object;

    check-cast p0, Lf9/h;

    new-instance v0, Lr0/p2;

    invoke-direct {v0, p0}, Lr0/p2;-><init>(Lf9/h;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
