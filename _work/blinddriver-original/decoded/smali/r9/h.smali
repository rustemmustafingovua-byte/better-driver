.class public final synthetic Lr9/h;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final s:Lr9/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lr9/h;

    const-string v4, "next()Lkotlin/text/MatchResult;"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lr9/g;

    const-string v3, "next"

    invoke-direct/range {v0 .. v5}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lr9/h;->s:Lr9/h;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr9/g;

    const-string p0, "p0"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lr9/g;->d()Lr9/g;

    move-result-object p0

    return-object p0
.end method
