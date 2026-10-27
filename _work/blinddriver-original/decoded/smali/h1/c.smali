.class public final Lh1/c;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final l:Lh1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh1/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj9/o;-><init>(I)V

    sput-object v0, Lh1/c;->l:Lh1/c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lm2/p;

    invoke-virtual {p1}, Lm2/p;->k()Lm2/m;

    move-result-object p0

    sget-object p1, Lm2/t;->A:Lm2/w;

    iget-object p0, p0, Lm2/m;->l:Lk/m0;

    invoke-virtual {p0, p1}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
