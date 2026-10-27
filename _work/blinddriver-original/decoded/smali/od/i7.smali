.class public final synthetic Lod/i7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lr0/u0;I)V
    .locals 0

    iput p3, p0, Lod/i7;->l:I

    iput-object p1, p0, Lod/i7;->m:Ljava/lang/String;

    iput-object p2, p0, Lod/i7;->n:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/i7;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/i7;->m:Ljava/lang/String;

    iget-object p0, p0, Lod/i7;->n:Lr0/u0;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/i7;->m:Ljava/lang/String;

    iget-object p0, p0, Lod/i7;->n:Lr0/u0;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
