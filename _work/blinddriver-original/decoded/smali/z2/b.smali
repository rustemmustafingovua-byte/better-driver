.class public final Lz2/b;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field public final l:Lm1/n;

.field public final m:F

.field public final n:Lr0/e1;

.field public final o:Lr0/d0;


# direct methods
.method public constructor <init>(Lm1/n;F)V
    .locals 2

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput-object p1, p0, Lz2/b;->l:Lm1/n;

    iput p2, p0, Lz2/b;->m:F

    new-instance p1, Ll1/e;

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-direct {p1, v0, v1}, Ll1/e;-><init>(J)V

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lz2/b;->n:Lr0/e1;

    new-instance p1, Lod/x4;

    const/16 p2, 0x14

    invoke-direct {p1, p2, p0}, Lod/x4;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object p1

    iput-object p1, p0, Lz2/b;->o:Lr0/d0;

    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Lz2/b;->m:F

    invoke-static {p1, v0}, Lx2/i;->c(Landroid/text/TextPaint;F)V

    iget-object p0, p0, Lz2/b;->o:Lr0/d0;

    invoke-virtual {p0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Shader;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
