.class public final synthetic Lod/n5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lad/r2;

.field public final synthetic n:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lad/r2;Lr0/u0;I)V
    .locals 0

    iput p3, p0, Lod/n5;->l:I

    iput-object p1, p0, Lod/n5;->m:Lad/r2;

    iput-object p2, p0, Lod/n5;->n:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lod/n5;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/n5;->m:Lad/r2;

    iget-object p0, p0, Lod/n5;->n:Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2}, Lg6/c1;->e(FFF)F

    move-result p0

    iput p0, v0, Lad/r2;->e:F

    iget-object p0, v0, Lad/r2;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "volume"

    iget v0, v0, Lad/r2;->e:F

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/n5;->m:Lad/r2;

    iget-object p0, p0, Lod/n5;->n:Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lg6/c1;->f(III)I

    move-result p0

    iput p0, v0, Lad/r2;->g:I

    iget-object p0, v0, Lad/r2;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "gain_level"

    iget v0, v0, Lad/r2;->g:I

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
