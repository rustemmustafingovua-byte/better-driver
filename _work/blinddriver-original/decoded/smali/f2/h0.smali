.class public final Lf2/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf2/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf2/h0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf2/h0;->a:Lf2/h0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lb5/c;->t(Landroid/view/View;)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    sget-object p0, Lf2/g0;->a:Lf2/g0;

    sget-object p0, Lf2/g0;->a:Lf2/g0;

    sget-object p0, Lf2/g0;->a:Lf2/g0;

    invoke-static {p1, p0}, Lb5/c;->u(Landroid/view/View;Landroid/view/translation/ViewTranslationCallback;)V

    return-void
.end method
