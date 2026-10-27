.class public final synthetic Lod/o5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lad/r2;

.field public final synthetic n:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lad/r2;Lr0/u0;I)V
    .locals 0

    iput p3, p0, Lod/o5;->l:I

    iput-object p1, p0, Lod/o5;->m:Lad/r2;

    iput-object p2, p0, Lod/o5;->n:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lod/o5;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/o5;->m:Lad/r2;

    iget-object p0, p0, Lod/o5;->n:Lr0/u0;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iput-boolean v1, v0, Lad/r2;->f:Z

    iget-object p0, v0, Lad/r2;->a:Landroid/content/SharedPreferences;

    const-string p1, "pause_music"

    :goto_0
    invoke-static {p0, p1, v1}, Lr0/i;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/o5;->m:Lad/r2;

    iget-object p0, p0, Lod/o5;->n:Lr0/u0;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iput-boolean v1, v0, Lad/r2;->h:Z

    iget-object p0, v0, Lad/r2;->a:Landroid/content/SharedPreferences;

    const-string p1, "silent_in_call"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
