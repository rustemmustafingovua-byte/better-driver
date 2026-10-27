.class public final Lm/t;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# static fields
.field public static final l:Lm/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj9/o;-><init>(I)V

    sput-object v0, Lm/t;->l:Lm/t;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
