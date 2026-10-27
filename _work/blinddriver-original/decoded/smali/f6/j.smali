.class public final Lf6/j;
.super Lf6/l;
.source "SourceFile"


# static fields
.field public static final n:Lf6/j;

.field public static final o:Lf6/j;

.field public static final p:Lf6/j;

.field public static final q:Lf6/j;


# instance fields
.field public final synthetic m:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lf6/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf6/j;-><init>(I)V

    sput-object v0, Lf6/j;->n:Lf6/j;

    new-instance v0, Lf6/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf6/j;-><init>(I)V

    sput-object v0, Lf6/j;->o:Lf6/j;

    new-instance v0, Lf6/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lf6/j;-><init>(I)V

    sput-object v0, Lf6/j;->p:Lf6/j;

    new-instance v0, Lf6/j;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lf6/j;-><init>(I)V

    sput-object v0, Lf6/j;->q:Lf6/j;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lf6/j;->m:I

    packed-switch p1, :pswitch_data_0

    const-class p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Le6/b0;-><init>(Ljava/lang/Class;)V

    return-void

    :pswitch_0
    const-class p1, Ljava/util/TreeSet;

    invoke-direct {p0, p1}, Le6/b0;-><init>(Ljava/lang/Class;)V

    return-void

    :pswitch_1
    const-class p1, Ljava/util/TreeMap;

    invoke-direct {p0, p1}, Le6/b0;-><init>(Ljava/lang/Class;)V

    return-void

    :pswitch_2
    const-class p1, Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Le6/b0;-><init>(Ljava/lang/Class;)V

    return-void

    :pswitch_3
    const-class p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Le6/b0;-><init>(Ljava/lang/Class;)V

    return-void

    :pswitch_4
    const-class p1, Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1}, Le6/b0;-><init>(Ljava/lang/Class;)V

    return-void

    :pswitch_5
    const-class p1, Ljava/util/HashSet;

    invoke-direct {p0, p1}, Le6/b0;-><init>(Ljava/lang/Class;)V

    return-void

    :pswitch_6
    const-class p1, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Le6/b0;-><init>(Ljava/lang/Class;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final w(Lb6/i;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lf6/j;->m:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
