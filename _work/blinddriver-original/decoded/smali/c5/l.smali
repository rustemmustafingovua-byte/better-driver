.class public final Lc5/l;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final l:Lc5/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc5/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj9/o;-><init>(I)V

    sput-object v0, Lc5/l;->l:Lc5/l;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ld5/e;

    const-string p0, "it"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
