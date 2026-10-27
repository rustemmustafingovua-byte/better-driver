.class public final Lg6/j1;
.super Lg6/k1;
.source "SourceFile"


# static fields
.field public static final o:Lg6/j1;

.field public static final p:Lg6/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg6/j1;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lg6/j1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lg6/j1;->o:Lg6/j1;

    new-instance v0, Lg6/j1;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lg6/j1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lg6/j1;->p:Lg6/j1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lg6/k1;-><init>(ILjava/lang/Class;Lg6/v;)V

    return-void
.end method


# virtual methods
.method public final a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    return-object p2
.end method
