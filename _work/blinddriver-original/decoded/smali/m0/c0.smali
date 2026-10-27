.class public final Lm0/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/j;


# static fields
.field public static final b:Lm0/c0;

.field public static final c:Lm0/c0;

.field public static final d:Lm0/b0;

.field public static final e:Lm0/b0;

.field public static final f:Lm0/b0;

.field public static final g:Lm0/b0;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lm0/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm0/c0;-><init>(I)V

    sput-object v0, Lm0/c0;->b:Lm0/c0;

    new-instance v0, Lm0/c0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lm0/c0;-><init>(I)V

    sput-object v0, Lm0/c0;->c:Lm0/c0;

    new-instance v0, Lm0/b0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm0/b0;-><init>(I)V

    sput-object v0, Lm0/c0;->d:Lm0/b0;

    new-instance v0, Lm0/b0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lm0/b0;-><init>(I)V

    sput-object v0, Lm0/c0;->e:Lm0/b0;

    new-instance v0, Lm0/b0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm0/b0;-><init>(I)V

    sput-object v0, Lm0/c0;->f:Lm0/b0;

    new-instance v0, Lm0/b0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm0/b0;-><init>(I)V

    sput-object v0, Lm0/c0;->g:Lm0/b0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lm0/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm0/x;I)J
    .locals 0

    iget p0, p0, Lm0/c0;->a:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Lm0/x;->f:Lp2/j0;

    invoke-virtual {p0, p2}, Lp2/j0;->j(I)J

    move-result-wide p0

    return-wide p0

    :pswitch_0
    iget-object p0, p1, Lm0/x;->f:Lp2/j0;

    iget-object p0, p0, Lp2/j0;->a:Lp2/i0;

    iget-object p0, p0, Lp2/i0;->a:Lp2/g;

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    invoke-static {p0, p2}, Lb0/n1;->t(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-static {p0, p2}, Lb0/n1;->s(Ljava/lang/CharSequence;I)I

    move-result p0

    invoke-static {p1, p0}, Lp2/d0;->b(II)J

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
