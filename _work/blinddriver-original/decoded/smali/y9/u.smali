.class public final synthetic Ly9/u;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/f;


# static fields
.field public static final s:Ly9/u;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ly9/u;

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lx9/h;

    const-string v3, "emit"

    invoke-direct/range {v0 .. v5}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Ly9/u;->s:Ly9/u;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx9/h;

    check-cast p3, Ly8/c;

    invoke-interface {p1, p2, p3}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
