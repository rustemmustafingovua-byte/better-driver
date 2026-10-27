.class public final Lm/j;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# static fields
.field public static final l:Lm/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lj9/o;-><init>(I)V

    sput-object v0, Lm/j;->l:Lm/j;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lm/p;

    check-cast p2, Lm/p;

    if-ne p1, p2, :cond_0

    sget-object p0, Lm/p;->n:Lm/p;

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
