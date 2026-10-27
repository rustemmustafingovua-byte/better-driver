.class public abstract Landroidx/fragment/app/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/v;
.implements Landroidx/lifecycle/g1;
.implements Landroidx/lifecycle/k;
.implements Ln4/g;


# static fields
.field static final ACTIVITY_CREATED:I = 0x4

.field static final ATTACHED:I = 0x0

.field static final AWAITING_ENTER_EFFECTS:I = 0x6

.field static final AWAITING_EXIT_EFFECTS:I = 0x3

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = -0x1

.field static final RESUMED:I = 0x7

.field static final STARTED:I = 0x5

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field static final VIEW_CREATED:I = 0x2


# instance fields
.field mAdded:Z

.field mAnimationInfo:Landroidx/fragment/app/h0;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mBeingSaved:Z

.field private mCalled:Z

.field mChildFragmentManager:Landroidx/fragment/app/w0;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field private mContentLayoutId:I

.field mDefaultFactory:Landroidx/lifecycle/c1;

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroidx/fragment/app/w0;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroidx/fragment/app/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/q0;"
        }
    .end annotation
.end field

.field mInDynamicContainer:Z

.field mInLayout:Z

.field mIsCreated:Z

.field private mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Landroidx/lifecycle/x;

.field mMaxState:Landroidx/lifecycle/p;

.field mMenuVisible:Z

.field private final mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnPreAttachedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/j0;",
            ">;"
        }
    .end annotation
.end field

.field mParentFragment:Landroidx/fragment/app/l0;

.field mPerformedCreateView:Z

.field mPostponedDurationRunnable:Ljava/lang/Runnable;

.field mPostponedHandler:Landroid/os/Handler;

.field public mPreviousWho:Ljava/lang/String;

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetainInstanceChangedWhileDetached:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field private final mSavedStateAttachListener:Landroidx/fragment/app/j0;

.field mSavedStateRegistryController:Ln4/f;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;

.field mSavedViewRegistryState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroidx/fragment/app/l0;

.field mTargetRequestCode:I

.field mTargetWho:Ljava/lang/String;

.field mTransitioning:Z

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewLifecycleOwner:Landroidx/fragment/app/o1;

.field mViewLifecycleOwnerLiveData:Landroidx/lifecycle/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/d0;"
        }
    .end annotation
.end field

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/l0;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/l0;->mState:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/l0;->mTargetWho:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/l0;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    new-instance v0, Landroidx/fragment/app/x0;

    invoke-direct {v0}, Landroidx/fragment/app/w0;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mMenuVisible:Z

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mUserVisibleHint:Z

    new-instance v0, Landroidx/fragment/app/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/v;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/fragment/app/l0;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    sget-object v0, Landroidx/lifecycle/p;->p:Landroidx/lifecycle/p;

    iput-object v0, p0, Landroidx/fragment/app/l0;->mMaxState:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/lifecycle/d0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/d0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/l0;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/l0;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    new-instance v0, Landroidx/fragment/app/d0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/d0;-><init>(Landroidx/fragment/app/l0;)V

    iput-object v0, p0, Landroidx/fragment/app/l0;->mSavedStateAttachListener:Landroidx/fragment/app/j0;

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->e()V

    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/l0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroidx/fragment/app/l0;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/l0;

    move-result-object p0

    return-object p0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/l0;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 4
    invoke-static {p0, p1}, Landroidx/fragment/app/u0;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/l0;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 7
    invoke-virtual {p0, p2}, Landroidx/fragment/app/l0;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :cond_0
    return-object p0

    .line 8
    :goto_0
    new-instance p2, Landroidx/fragment/app/i0;

    const-string v0, ": calling Fragment constructor caused an exception"

    .line 9
    invoke-static {v1, p1, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    throw p2

    .line 12
    :goto_1
    new-instance p2, Landroidx/fragment/app/i0;

    const-string v0, ": could not find Fragment constructor"

    .line 13
    invoke-static {v1, p1, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    throw p2

    .line 16
    :goto_2
    new-instance p2, Landroidx/fragment/app/i0;

    .line 17
    invoke-static {v1, p1, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    throw p2

    .line 20
    :goto_3
    new-instance p2, Landroidx/fragment/app/i0;

    .line 21
    invoke-static {v1, p1, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    throw p2
.end method


# virtual methods
.method public final b()Landroidx/fragment/app/h0;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/fragment/app/h0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/h0;->i:Ljava/lang/Object;

    sget-object v2, Landroidx/fragment/app/l0;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/fragment/app/h0;->j:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/h0;->k:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/fragment/app/h0;->l:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/fragment/app/h0;->m:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/fragment/app/h0;->n:Ljava/lang/Object;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroidx/fragment/app/h0;->q:F

    iput-object v1, v0, Landroidx/fragment/app/h0;->r:Landroid/view/View;

    iput-object v0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    return-object p0
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/l0;->mMaxState:Landroidx/lifecycle/p;

    sget-object v1, Landroidx/lifecycle/p;->m:Landroidx/lifecycle/p;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/l0;->mParentFragment:Landroidx/fragment/app/l0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mParentFragment:Landroidx/fragment/app/l0;

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->c()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public callStartTransitionListener(Z)V
    .locals 11

    iget-object v0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Landroidx/fragment/app/h0;->s:Z

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    iget-object v2, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-eqz v2, :cond_a

    invoke-static {v0, v2}, Landroidx/fragment/app/u;->j(Landroid/view/ViewGroup;Landroidx/fragment/app/w0;)Landroidx/fragment/app/u;

    move-result-object v0

    iget-object v2, v0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/u;->m()V

    iget-object v3, v0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroidx/fragment/app/s1;

    iget-object v7, v6, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget-object v7, v7, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    const-string v8, "operation.fragment.mView"

    invoke-static {v7, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-nez v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_4

    if-eq v7, v10, :cond_5

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    const/4 v10, 0x3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown visibility "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move v10, v9

    :cond_5
    :goto_0
    iget v6, v6, Landroidx/fragment/app/s1;->a:I

    if-ne v6, v9, :cond_1

    if-eq v10, v9, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_6
    move-object v4, v5

    :goto_1
    check-cast v4, Landroidx/fragment/app/s1;

    if-eqz v4, :cond_7

    iget-object v3, v4, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    goto :goto_2

    :cond_7
    move-object v3, v5

    :goto_2
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroidx/fragment/app/l0;->isPostponed()Z

    move-result v1

    :cond_8
    iput-boolean v1, v0, Landroidx/fragment/app/u;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-nez p1, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/u;->e()V

    iget-object p1, p0, Landroidx/fragment/app/l0;->mPostponedHandler:Landroid/os/Handler;

    if-eqz p1, :cond_a

    iget-object v0, p0, Landroidx/fragment/app/l0;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v5, p0, Landroidx/fragment/app/l0;->mPostponedHandler:Landroid/os/Handler;

    return-void

    :cond_9
    throw v5

    :goto_3
    monitor-exit v2

    throw p0

    :cond_a
    return-void
.end method

.method public createFragmentContainer()Landroidx/fragment/app/o0;
    .locals 1

    new-instance v0, Landroidx/fragment/app/e0;

    invoke-direct {v0, p0}, Landroidx/fragment/app/e0;-><init>(Landroidx/fragment/app/l0;)V

    return-object v0
.end method

.method public final d(Z)Landroidx/fragment/app/l0;
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lz3/b;->a:Lz3/a;

    new-instance p1, Lz3/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempting to get target fragment from fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lz3/g;-><init>(Landroidx/fragment/app/l0;Ljava/lang/String;)V

    invoke-static {p1}, Lz3/b;->b(Lz3/g;)V

    invoke-static {p0}, Lz3/b;->a(Landroidx/fragment/app/l0;)Lz3/a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/l0;->mTarget:Landroidx/fragment/app/l0;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/l0;->mTargetWho:Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p1, p1, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/e1;->a(Ljava/lang/String;)Landroidx/fragment/app/l0;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/l0;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/l0;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/l0;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/l0;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/l0;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/l0;->mParentFragment:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/l0;->mParentFragment:Landroidx/fragment/app/l0;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/l0;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/l0;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/l0;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/l0;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/l0;->mSavedViewRegistryState:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewRegistryState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/l0;->mSavedViewRegistryState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/l0;->d(Z)Landroidx/fragment/app/l0;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mTarget="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " mTargetRequestCode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroidx/fragment/app/l0;->mTargetRequestCode:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mPopDirection="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getPopDirection()Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getEnterAnim()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "getEnterAnim="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getEnterAnim()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getExitAnim()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "getExitAnim="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getExitAnim()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getPopEnterAnim()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "getPopEnterAnim="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getPopEnterAnim()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getPopExitAnim()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "getPopExitAnim="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getPopExitAnim()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_a
    iget-object v1, p0, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mContainer="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/l0;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    iget-object v1, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-eqz v1, :cond_c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mView="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAnimatingAway="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    invoke-interface {p0}, Landroidx/lifecycle/g1;->getViewModelStore()Landroidx/lifecycle/f1;

    move-result-object v1

    sget-object v3, Lg4/b;->c:Landroidx/fragment/app/z0;

    const-string v4, "store"

    invoke-static {v1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ld4/a;->b:Ld4/a;

    const-string v5, "defaultCreationExtras"

    invoke-static {v4, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lg5/i;

    invoke-direct {v5, v1, v3, v4}, Lg5/i;-><init>(Landroidx/lifecycle/f1;Landroidx/lifecycle/c1;Ld4/b;)V

    const-class v1, Lg4/b;

    invoke-static {v1}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v1

    invoke-virtual {v1}, Lj9/f;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lg5/i;->u(Lj9/f;Ljava/lang/String;)Landroidx/lifecycle/z0;

    move-result-object v1

    check-cast v1, Lg4/b;

    iget-object v1, v1, Lg4/b;->b:Lk/w0;

    iget v3, v1, Lk/w0;->n:I

    if-lez v3, :cond_11

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v3, v1, Lk/w0;->n:I

    if-gtz v3, :cond_e

    goto :goto_0

    :cond_e
    invoke-virtual {v1, v0}, Lk/w0;->h(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "  #"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, v1, Lk/w0;->l:[I

    aget p0, p0, v0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ": "

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    throw v2

    :cond_f
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_10
    const-string p0, "Local and anonymous classes can not be ViewModels"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Child "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "    "

    invoke-static {p1, v1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    iget-object v4, v3, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    const-string v5, "    "

    invoke-static {p1, v5}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Landroidx/fragment/app/e1;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Active Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/d1;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v6, :cond_12

    iget-object v6, v6, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v6, v5, p2, p3, p4}, Landroidx/fragment/app/l0;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_12
    const-string v6, "null"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_14

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Added Fragments:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v0

    :goto_2
    if-ge p4, p2, :cond_14

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/l0;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/l0;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_14
    iget-object p2, p0, Landroidx/fragment/app/w0;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_15

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v0

    :goto_3
    if-ge p4, p2, :cond_15

    iget-object v3, p0, Landroidx/fragment/app/w0;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/l0;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/l0;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_15
    iget-object p2, p0, Landroidx/fragment/app/w0;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_16

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p4, v0

    :goto_4
    if-ge p4, p2, :cond_16

    iget-object v3, p0, Landroidx/fragment/app/w0;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v1, p3, v4}, Landroidx/fragment/app/a;->c(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_16
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Back Stack Index: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Landroidx/fragment/app/w0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/w0;->a:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object p4, p0, Landroidx/fragment/app/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_17

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    if-ge v0, p4, :cond_17

    iget-object v1, p0, Landroidx/fragment/app/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_17
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/w0;->n:Landroidx/fragment/app/o0;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz p2, :cond_18

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/w0;->m:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/w0;->t:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/w0;->u:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/w0;->v:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Landroidx/fragment/app/w0;->s:Z

    if-eqz p2, :cond_19

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/fragment/app/w0;->s:Z

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_19
    return-void

    :goto_6
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/x;-><init>(Landroidx/lifecycle/v;Z)V

    iput-object v0, p0, Landroidx/fragment/app/l0;->mLifecycleRegistry:Landroidx/lifecycle/x;

    new-instance v0, Lp4/a;

    new-instance v1, Lad/t;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lp4/a;-><init>(Ln4/g;Lad/t;)V

    new-instance v1, Ln4/f;

    invoke-direct {v1, v0}, Ln4/f;-><init>(Lp4/a;)V

    iput-object v1, p0, Landroidx/fragment/app/l0;->mSavedStateRegistryController:Ln4/f;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/l0;->mDefaultFactory:Landroidx/lifecycle/c1;

    iget-object v0, p0, Landroidx/fragment/app/l0;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/l0;->mSavedStateAttachListener:Landroidx/fragment/app/j0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/l0;->mSavedStateAttachListener:Landroidx/fragment/app/j0;

    iget v1, p0, Landroidx/fragment/app/l0;->mState:I

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/j0;->a()V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/l0;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(Lg/a;Landroidx/fragment/app/y;Lf/b;)Landroidx/fragment/app/c0;
    .locals 8

    iget v0, p0, Landroidx/fragment/app/l0;->mState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Landroidx/fragment/app/g0;

    move-object v3, p0

    move-object v6, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/g0;-><init>(Landroidx/fragment/app/l0;Landroidx/fragment/app/y;Ljava/util/concurrent/atomic/AtomicReference;Lg/a;Lf/b;)V

    iget p0, v3, Landroidx/fragment/app/l0;->mState:I

    if-ltz p0, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/g0;->a()V

    goto :goto_0

    :cond_0
    iget-object p0, v3, Landroidx/fragment/app/l0;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p0, Landroidx/fragment/app/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_1
    move-object v3, p0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment "

    const-string p2, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."

    invoke-static {p1, v3, p2}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/l0;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    iget-object p0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    iget-object p0, p0, Landroidx/fragment/app/e1;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d1;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l0;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/l0;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public generateActivityResultKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fragment_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_rq#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/l0;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getActivity()Landroidx/fragment/app/m0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/h0;->p:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/h0;->o:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getAnimatingAway()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mArguments:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getChildFragmentManager()Landroidx/fragment/app/w0;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " has not been attached yet."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultViewModelCreationExtras()Ld4/b;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find Application instance from Context "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Ld4/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ld4/c;-><init>(I)V

    iget-object v2, v1, Ld4/b;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3

    sget-object v3, Landroidx/lifecycle/b1;->d:Ld7/g;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Landroidx/lifecycle/t0;->a:Ld7/g;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/lifecycle/t0;->b:Ld7/g;

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/lifecycle/t0;->c:Ld7/g;

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/c1;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/fragment/app/l0;->mDefaultFactory:Landroidx/lifecycle/c1;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find Application instance from Context "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Landroidx/lifecycle/w0;

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/w0;-><init>(Landroid/app/Application;Ln4/g;Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/fragment/app/l0;->mDefaultFactory:Landroidx/lifecycle/c1;

    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/l0;->mDefaultFactory:Landroidx/lifecycle/c1;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access ViewModels from detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEnterAnim()I
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/fragment/app/h0;->b:I

    return p0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/h0;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public getEnterTransitionCallback()Li3/h;
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public getExitAnim()I
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/fragment/app/h0;->c:I

    return p0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/h0;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public getExitTransitionCallback()Li3/h;
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public getFocusedView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/h0;->r:Landroid/view/View;

    return-object p0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/w0;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    return-object p0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/l0;->mFragmentId:I

    return p0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/l0;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/l0;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLifecycle()Landroidx/lifecycle/q;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mLifecycleRegistry:Landroidx/lifecycle/x;

    return-object p0
.end method

.method public getLoaderManager()Lg4/a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lg4/c;

    invoke-interface {p0}, Landroidx/lifecycle/g1;->getViewModelStore()Landroidx/lifecycle/f1;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lg4/c;-><init>(Landroidx/fragment/app/l0;Landroidx/lifecycle/f1;)V

    return-object v0
.end method

.method public getNextTransition()I
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/fragment/app/h0;->f:I

    return p0
.end method

.method public final getParentFragment()Landroidx/fragment/app/l0;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mParentFragment:Landroidx/fragment/app/l0;

    return-object p0
.end method

.method public final getParentFragmentManager()Landroidx/fragment/app/w0;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not associated with a fragment manager."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPopDirection()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Landroidx/fragment/app/h0;->a:Z

    return p0
.end method

.method public getPopEnterAnim()I
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/fragment/app/h0;->d:I

    return p0
.end method

.method public getPopExitAnim()I
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/fragment/app/h0;->e:I

    return p0
.end method

.method public getPostOnViewCreatedAlpha()F
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    iget p0, p0, Landroidx/fragment/app/h0;->q:F

    return p0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/h0;->l:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/l0;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getExitTransition()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public final getRetainInstance()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lz3/b;->a:Lz3/a;

    new-instance v0, Lz3/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to get retain instance for fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lz3/g;-><init>(Landroidx/fragment/app/l0;Ljava/lang/String;)V

    invoke-static {v0}, Lz3/b;->b(Lz3/g;)V

    invoke-static {p0}, Lz3/b;->a(Landroidx/fragment/app/l0;)Lz3/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p0, Landroidx/fragment/app/l0;->mRetainInstance:Z

    return p0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/h0;->j:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/l0;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getSavedStateRegistry()Ln4/e;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mSavedStateRegistryController:Ln4/f;

    iget-object p0, p0, Ln4/f;->b:Ln4/e;

    return-object p0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/h0;->m:Ljava/lang/Object;

    return-object p0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/h0;->n:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/l0;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getSharedElementSourceNames()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/h0;->g:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSharedElementTargetNames()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/h0;->h:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetFragment()Landroidx/fragment/app/l0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/l0;->d(Z)Landroidx/fragment/app/l0;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetRequestCode()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lz3/b;->a:Lz3/a;

    new-instance v0, Lz3/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to get target request code from fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lz3/g;-><init>(Landroidx/fragment/app/l0;Ljava/lang/String;)V

    invoke-static {v0}, Lz3/b;->b(Lz3/g;)V

    invoke-static {p0}, Lz3/b;->a(Landroidx/fragment/app/l0;)Lz3/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Landroidx/fragment/app/l0;->mTargetRequestCode:I

    return p0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUserVisibleHint()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroidx/fragment/app/l0;->mUserVisibleHint:Z

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getViewLifecycleOwner()Landroidx/lifecycle/v;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access the Fragment View\'s LifecycleOwner for "

    const-string v2, " when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewLifecycleOwnerLiveData()Landroidx/lifecycle/c0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/c0;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/d0;

    return-object p0
.end method

.method public getViewModelStore()Landroidx/lifecycle/f1;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->c()I

    move-result v0

    sget-object v1, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    iget-object v0, v0, Landroidx/fragment/app/w0;->w:Landroidx/fragment/app/a1;

    iget-object v0, v0, Landroidx/fragment/app/a1;->d:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/f1;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/lifecycle/f1;

    invoke-direct {v1}, Landroidx/lifecycle/f1;-><init>()V

    iget-object p0, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access ViewModels from detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasOptionsMenu()Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "KotlinPropertyAccess"
        }
    .end annotation

    iget-boolean p0, p0, Landroidx/fragment/app/l0;->mHasMenu:Z

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public initState()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->e()V

    iget-object v0, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/l0;->mPreviousWho:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mAdded:Z

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mRemoving:Z

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mFromLayout:Z

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mInLayout:Z

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mRestored:Z

    iput v0, p0, Landroidx/fragment/app/l0;->mBackStackNesting:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    new-instance v2, Landroidx/fragment/app/x0;

    invoke-direct {v2}, Landroidx/fragment/app/w0;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    iput v0, p0, Landroidx/fragment/app/l0;->mFragmentId:I

    iput v0, p0, Landroidx/fragment/app/l0;->mContainerId:I

    iput-object v1, p0, Landroidx/fragment/app/l0;->mTag:Ljava/lang/String;

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mHidden:Z

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mDetached:Z

    return-void
.end method

.method public final isAdded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isDetached()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/l0;->mDetached:Z

    return p0
.end method

.method public final isHidden()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHidden:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/l0;->mParentFragment:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->isHidden()Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isInBackStack()Z
    .locals 0

    iget p0, p0, Landroidx/fragment/app/l0;->mBackStackNesting:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInLayout()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/l0;->mInLayout:Z

    return p0
.end method

.method public final isMenuVisible()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mMenuVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/l0;->mParentFragment:Landroidx/fragment/app/l0;

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->isMenuVisible()Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isPostponed()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Landroidx/fragment/app/h0;->s:Z

    return p0
.end method

.method public final isRemoving()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/l0;->mRemoving:Z

    return p0
.end method

.method public final isResumed()Z
    .locals 1

    iget p0, p0, Landroidx/fragment/app/l0;->mState:I

    const/4 v0, 0x7

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isStateSaved()Z
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Landroidx/fragment/app/w0;->t:Z

    if-nez v1, :cond_2

    iget-boolean p0, p0, Landroidx/fragment/app/w0;->u:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public noteStateNotSaved()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " resultCode: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " data: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/l0;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->restoreChildFragmentState()V

    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    iget v0, p0, Landroidx/fragment/app/w0;->m:I

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/w0;->t:Z

    iput-boolean v0, p0, Landroidx/fragment/app/w0;->u:Z

    iget-object v1, p0, Landroidx/fragment/app/w0;->w:Landroidx/fragment/app/a1;

    iput-boolean v0, v1, Landroidx/fragment/app/a1;->g:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/w0;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->requireActivity()Landroidx/fragment/app/m0;

    const/4 p0, 0x0

    throw p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget p0, p0, Landroidx/fragment/app/l0;->mContentLayoutId:I

    if-eqz p0, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    return-void
.end method

.method public performActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/app/l0;->mState:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    if-eqz p1, :cond_3

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "moveto RESTORE_VIEW_STATE: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v2, "savedInstanceState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->restoreViewState(Landroid/os/Bundle;)V

    :cond_2
    iput-object v0, p0, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    iput-boolean v1, p0, Landroidx/fragment/app/w0;->t:Z

    iput-boolean v1, p0, Landroidx/fragment/app/w0;->u:Z

    iget-object p1, p0, Landroidx/fragment/app/w0;->w:Landroidx/fragment/app/a1;

    iput-boolean v1, p1, Landroidx/fragment/app/a1;->g:Z

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/fragment/app/w0;->h(I)V

    throw v0

    :cond_3
    new-instance p1, Landroidx/fragment/app/v1;

    const-string v0, "Fragment "

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-static {v0, p0, v1}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performAttach()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/l0;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroidx/fragment/app/j0;

    invoke-virtual {v4}, Landroidx/fragment/app/j0;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/l0;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->createFragmentContainer()Landroidx/fragment/app/o0;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/w0;->n:Landroidx/fragment/app/o0;

    iput-object p0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    new-instance v1, Ld7/g;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ld7/g;-><init>(I)V

    iget-object v3, v0, Landroidx/fragment/app/w0;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/w0;->q()V

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    iget-object v1, v1, Landroidx/fragment/app/w0;->w:Landroidx/fragment/app/a1;

    iget-object v3, v1, Landroidx/fragment/app/a1;->c:Ljava/util/HashMap;

    iget-object v4, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a1;

    if-nez v4, :cond_2

    new-instance v4, Landroidx/fragment/app/a1;

    iget-boolean v1, v1, Landroidx/fragment/app/a1;->e:Z

    invoke-direct {v4, v1}, Landroidx/fragment/app/a1;-><init>(Z)V

    iget-object v1, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object v4, v0, Landroidx/fragment/app/w0;->w:Landroidx/fragment/app/a1;

    iget-boolean v1, v0, Landroidx/fragment/app/w0;->t:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Landroidx/fragment/app/w0;->u:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, v4, Landroidx/fragment/app/a1;->g:Z

    iget-object v0, v0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    iput-object v4, v0, Landroidx/fragment/app/e1;->d:Landroidx/fragment/app/a1;

    iput v2, p0, Landroidx/fragment/app/l0;->mState:I

    iput-boolean v2, p0, Landroidx/fragment/app/l0;->mCalled:Z

    const/4 p0, 0x0

    throw p0
.end method

.method public performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    iget v0, p0, Landroidx/fragment/app/w0;->m:I

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {p0}, Landroidx/fragment/app/e1;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/l0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l0;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public performCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/l0;->mState:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    iget-object v1, p0, Landroidx/fragment/app/l0;->mLifecycleRegistry:Landroidx/lifecycle/x;

    new-instance v2, Landroidx/fragment/app/f0;

    invoke-direct {v2, p0}, Landroidx/fragment/app/f0;-><init>(Landroidx/fragment/app/l0;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/x;->a(Landroidx/lifecycle/u;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mIsCreated:Z

    iget-boolean p1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/l0;->mLifecycleRegistry:Landroidx/lifecycle/x;

    sget-object p1, Landroidx/lifecycle/o;->ON_CREATE:Landroidx/lifecycle/o;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/x;->e(Landroidx/lifecycle/o;)V

    return-void

    :cond_0
    new-instance p1, Landroidx/fragment/app/v1;

    const-string v0, "Fragment "

    const-string v1, " did not call through to super.onCreate()"

    invoke-static {v0, p0, v1}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/l0;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v1, 0x1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    iget v0, p0, Landroidx/fragment/app/w0;->m:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {v0}, Landroidx/fragment/app/e1;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    move v5, v2

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/l0;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroidx/fragment/app/l0;->isMenuVisible()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, p1, p2}, Landroidx/fragment/app/l0;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/fragment/app/w0;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/w0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    iget-object p1, p0, Landroidx/fragment/app/w0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/l0;

    if-eqz v4, :cond_5

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroidx/fragment/app/l0;->onDestroyOptionsMenu()V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iput-object v4, p0, Landroidx/fragment/app/w0;->e:Ljava/util/ArrayList;

    move v2, v5

    :goto_2
    or-int p0, v1, v2

    return p0

    :cond_8
    return v1
.end method

.method public performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mPerformedCreateView:Z

    new-instance v0, Landroidx/fragment/app/o1;

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getViewModelStore()Landroidx/lifecycle/f1;

    move-result-object v1

    new-instance v2, Landroidx/fragment/app/b0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Landroidx/fragment/app/b0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p0, v1, v2}, Landroidx/fragment/app/o1;-><init>(Landroidx/fragment/app/l0;Landroidx/lifecycle/f1;Landroidx/fragment/app/b0;)V

    iput-object v0, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/l0;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    invoke-virtual {p1}, Landroidx/fragment/app/o1;->b()V

    const/4 p1, 0x3

    invoke-static {p1}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Setting ViewLifecycleOwner on View "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for Fragment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    invoke-static {p1, p2}, Landroidx/lifecycle/t0;->i(Landroid/view/View;Landroidx/lifecycle/v;)V

    iget-object p1, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    invoke-static {p1, p2}, Landroidx/lifecycle/t0;->j(Landroid/view/View;Landroidx/lifecycle/g1;)V

    iget-object p1, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    invoke-static {p1, p2}, Ll9/a;->B(Landroid/view/View;Ln4/g;)V

    iget-object p1, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/d0;

    iget-object p0, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/d0;->c(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    iget-object p1, p1, Landroidx/fragment/app/o1;->p:Landroidx/lifecycle/x;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public performDestroy()V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/w0;->v:Z

    invoke-virtual {p0}, Landroidx/fragment/app/w0;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public performDestroyView()V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/w0;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public performDetach()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/l0;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/l0;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    iget-boolean v1, p0, Landroidx/fragment/app/w0;->v:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/w0;->v:Z

    invoke-virtual {p0}, Landroidx/fragment/app/w0;->i()V

    throw v0

    :cond_1
    new-instance v0, Landroidx/fragment/app/v1;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onDetach()"

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/l0;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public performLowMemory()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->onLowMemory()V

    return-void
.end method

.method public performMultiWindowModeChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHidden:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    iget v0, p0, Landroidx/fragment/app/w0;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {p0}, Landroidx/fragment/app/e1;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/l0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l0;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_3
    :goto_0
    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHidden:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    iget v0, p0, Landroidx/fragment/app/w0;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {p0}, Landroidx/fragment/app/e1;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/l0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l0;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public performPause()V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/w0;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public performPictureInPictureModeChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v1, 0x1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    iget v0, p0, Landroidx/fragment/app/w0;->m:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {p0}, Landroidx/fragment/app/e1;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/l0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->isMenuVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l0;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    goto :goto_0

    :cond_3
    :goto_1
    or-int p0, v1, v2

    return p0

    :cond_4
    return v1
.end method

.method public performPrimaryNavigationFragmentChanged()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/fragment/app/w0;->o(Landroidx/fragment/app/l0;)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/l0;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/l0;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/l0;->onPrimaryNavigationFragmentChanged(Z)V

    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {p0}, Landroidx/fragment/app/w0;->q()V

    iget-object v0, p0, Landroidx/fragment/app/w0;->p:Landroidx/fragment/app/l0;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/w0;->f(Landroidx/fragment/app/l0;)V

    return-void
.end method

.method public performResume()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {p0}, Landroidx/fragment/app/w0;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public performStart()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    invoke-virtual {p0}, Landroidx/fragment/app/w0;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public performStop()V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/w0;->u:Z

    iget-object v1, p0, Landroidx/fragment/app/w0;->w:Landroidx/fragment/app/a1;

    iput-boolean v0, v1, Landroidx/fragment/app/a1;->g:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/fragment/app/w0;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public performViewCreated()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/l0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/fragment/app/w0;->h(I)V

    throw v1
.end method

.method public postponeEnterTransition()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/h0;->s:Z

    return-void
.end method

.method public final postponeEnterTransition(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/h0;->s:Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/l0;->mPostponedHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/l0;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/fragment/app/l0;->mPostponedHandler:Landroid/os/Handler;

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/l0;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/l0;->mPostponedHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/fragment/app/l0;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final registerForActivityResult(Lg/a;Lf/b;)Lf/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/a;",
            "Lf/b;",
            ")",
            "Lf/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/fragment/app/y;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/y;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p2}, Landroidx/fragment/app/l0;->f(Lg/a;Landroidx/fragment/app/y;Lf/b;)Landroidx/fragment/app/c0;

    move-result-object p0

    return-object p0
.end method

.method public final registerForActivityResult(Lg/a;Lf/h;Lf/b;)Lf/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/a;",
            "Lf/h;",
            "Lf/b;",
            ")",
            "Lf/c;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroidx/fragment/app/y;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2}, Landroidx/fragment/app/y;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/l0;->f(Lg/a;Landroidx/fragment/app/y;Lf/b;)Landroidx/fragment/app/c0;

    move-result-object p0

    return-object p0
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string v0, " not attached to Activity"

    invoke-static {p2, p0, v0}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requireActivity()Landroidx/fragment/app/m0;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getActivity()Landroidx/fragment/app/m0;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to an activity."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireArguments()Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " does not have any arguments."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireContext()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to a context."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireFragmentManager()Landroidx/fragment/app/w0;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object p0

    return-object p0
.end method

.method public final requireHost()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getHost()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to a host."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireParentFragment()Landroidx/fragment/app/l0;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getParentFragment()Landroidx/fragment/app/l0;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Fragment "

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, " is not attached to any Fragment or host"

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a child Fragment, it is directly attached to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public final requireView()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-static {v1, p0, v2}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreChildFragmentState()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_22

    const-string v2, "childFragmentManager"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_f

    :cond_0
    iget-object v2, v0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    iget-object v3, v2, Landroidx/fragment/app/w0;->k:Lg5/s;

    const-string v4, "state"

    const-string v5, "): "

    const-string v6, "FragmentManager"

    iget-object v7, v2, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "result_"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    throw v10

    :cond_3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "fragment_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    if-nez v11, :cond_5

    goto :goto_1

    :cond_5
    throw v10

    :cond_6
    iget-object v9, v7, Landroidx/fragment/app/e1;->c:Ljava/util/HashMap;

    iget-object v11, v7, Landroidx/fragment/app/e1;->b:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/y0;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_21

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    iget-object v12, v1, Landroidx/fragment/app/y0;->l:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v8

    :cond_7
    if-ge v14, v13, :cond_b

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v14, v14, 0x1

    const/16 v17, 0x2

    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v7, v15, v10}, Landroidx/fragment/app/e1;->f(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-virtual {v15, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/b1;

    iget-object v1, v2, Landroidx/fragment/app/w0;->w:Landroidx/fragment/app/a1;

    iget-object v0, v0, Landroidx/fragment/app/b1;->m:Ljava/lang/String;

    iget-object v1, v1, Landroidx/fragment/app/a1;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "restoreSaveState: re-attaching retained "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput-object v10, v0, Landroidx/fragment/app/l0;->mSavedViewState:Landroid/util/SparseArray;

    iput-object v10, v0, Landroidx/fragment/app/l0;->mSavedViewRegistryState:Landroid/os/Bundle;

    iput v8, v0, Landroidx/fragment/app/l0;->mBackStackNesting:I

    iput-boolean v8, v0, Landroidx/fragment/app/l0;->mInLayout:Z

    iput-boolean v8, v0, Landroidx/fragment/app/l0;->mAdded:Z

    iget-object v1, v0, Landroidx/fragment/app/l0;->mTarget:Landroidx/fragment/app/l0;

    if-eqz v1, :cond_9

    iget-object v1, v1, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    goto :goto_2

    :cond_9
    move-object v1, v10

    :goto_2
    iput-object v1, v0, Landroidx/fragment/app/l0;->mTargetWho:Ljava/lang/String;

    iput-object v10, v0, Landroidx/fragment/app/l0;->mTarget:Landroidx/fragment/app/l0;

    iput-object v15, v0, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "arguments"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/l0;->mArguments:Landroid/os/Bundle;

    iput-object v15, v0, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v2, v0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    invoke-static/range {v17 .. v17}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restoreSaveState: active ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    throw v10

    :cond_b
    const/16 v17, 0x2

    iget-object v4, v2, Landroidx/fragment/app/w0;->w:Landroidx/fragment/app/a1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/util/ArrayList;

    iget-object v4, v4, Landroidx/fragment/app/a1;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v13, v8

    :goto_3
    if-ge v13, v4, :cond_e

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Landroidx/fragment/app/l0;

    iget-object v15, v14, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_c

    move-object/from16 v16, v10

    goto :goto_5

    :cond_c
    invoke-static/range {v17 .. v17}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v15

    if-eqz v15, :cond_d

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    const-string v10, "Discarding retained Fragment "

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " that was not found in the set of active Fragments "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroidx/fragment/app/y0;->l:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_d
    move-object/from16 v16, v10

    :goto_4
    iget-object v10, v2, Landroidx/fragment/app/w0;->w:Landroidx/fragment/app/a1;

    invoke-virtual {v10, v14}, Landroidx/fragment/app/a1;->f(Landroidx/fragment/app/l0;)V

    iput-object v2, v14, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    new-instance v10, Landroidx/fragment/app/d1;

    invoke-direct {v10, v3, v7, v14}, Landroidx/fragment/app/d1;-><init>(Lg5/s;Landroidx/fragment/app/e1;Landroidx/fragment/app/l0;)V

    iput v9, v10, Landroidx/fragment/app/d1;->e:I

    invoke-virtual {v10}, Landroidx/fragment/app/d1;->k()V

    iput-boolean v9, v14, Landroidx/fragment/app/l0;->mRemoving:Z

    invoke-virtual {v10}, Landroidx/fragment/app/d1;->k()V

    :goto_5
    move-object/from16 v10, v16

    goto :goto_3

    :cond_e
    move-object/from16 v16, v10

    iget-object v3, v1, Landroidx/fragment/app/y0;->m:Ljava/util/ArrayList;

    iget-object v4, v7, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v10, v8

    :goto_6
    if-ge v10, v4, :cond_12

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroidx/fragment/app/e1;->a(Ljava/lang/String;)Landroidx/fragment/app/l0;

    move-result-object v12

    if-eqz v12, :cond_11

    invoke-static/range {v17 .. v17}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v13

    if-eqz v13, :cond_f

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "restoreSaveState: added ("

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v11, v7, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    iget-object v11, v7, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    monitor-enter v11

    :try_start_0
    iget-object v13, v7, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x1

    iput-boolean v11, v12, Landroidx/fragment/app/l0;->mAdded:Z

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instantiated fragment for ("

    const-string v2, ")"

    invoke-static {v1, v11, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v3, v1, Landroidx/fragment/app/y0;->n:[Landroidx/fragment/app/c;

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Landroidx/fragment/app/y0;->n:[Landroidx/fragment/app/c;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Landroidx/fragment/app/w0;->d:Ljava/util/ArrayList;

    move v3, v8

    :goto_7
    iget-object v4, v1, Landroidx/fragment/app/y0;->n:[Landroidx/fragment/app/c;

    array-length v10, v4

    if-ge v3, v10, :cond_1e

    aget-object v4, v4, v3

    iget-object v10, v4, Landroidx/fragment/app/c;->m:Ljava/util/ArrayList;

    new-instance v11, Landroidx/fragment/app/a;

    invoke-direct {v11, v2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/w0;)V

    iget-object v12, v4, Landroidx/fragment/app/c;->l:[I

    move v13, v8

    move v14, v13

    :goto_8
    array-length v15, v12

    if-ge v13, v15, :cond_15

    new-instance v15, Landroidx/fragment/app/f1;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v18, v13, 0x1

    aget v8, v12, v13

    iput v8, v15, Landroidx/fragment/app/f1;->a:I

    invoke-static/range {v17 .. v17}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v8

    if-eqz v8, :cond_13

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Instantiate "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " op #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " base fragment #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v12, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-static {}, Landroidx/lifecycle/p;->values()[Landroidx/lifecycle/p;

    move-result-object v8

    iget-object v9, v4, Landroidx/fragment/app/c;->n:[I

    aget v9, v9, v14

    aget-object v8, v8, v9

    invoke-static {}, Landroidx/lifecycle/p;->values()[Landroidx/lifecycle/p;

    move-result-object v8

    iget-object v9, v4, Landroidx/fragment/app/c;->o:[I

    aget v9, v9, v14

    aget-object v8, v8, v9

    add-int/lit8 v8, v13, 0x2

    aget v9, v12, v18

    if-eqz v9, :cond_14

    const/4 v9, 0x1

    goto :goto_9

    :cond_14
    const/4 v9, 0x0

    :goto_9
    iput-boolean v9, v15, Landroidx/fragment/app/f1;->c:Z

    add-int/lit8 v9, v13, 0x3

    aget v8, v12, v8

    iput v8, v15, Landroidx/fragment/app/f1;->d:I

    add-int/lit8 v18, v13, 0x4

    aget v9, v12, v9

    iput v9, v15, Landroidx/fragment/app/f1;->e:I

    add-int/lit8 v20, v13, 0x5

    move-object/from16 v21, v12

    aget v12, v21, v18

    iput v12, v15, Landroidx/fragment/app/f1;->f:I

    add-int/lit8 v13, v13, 0x6

    move/from16 v18, v13

    aget v13, v21, v20

    iput v13, v15, Landroidx/fragment/app/f1;->g:I

    iput v8, v11, Landroidx/fragment/app/a;->b:I

    iput v9, v11, Landroidx/fragment/app/a;->c:I

    iput v12, v11, Landroidx/fragment/app/a;->d:I

    iput v13, v11, Landroidx/fragment/app/a;->e:I

    invoke-virtual {v11, v15}, Landroidx/fragment/app/a;->a(Landroidx/fragment/app/f1;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v18

    move-object/from16 v12, v21

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_8

    :cond_15
    iget v8, v4, Landroidx/fragment/app/c;->p:I

    iput v8, v11, Landroidx/fragment/app/a;->f:I

    iget-object v8, v4, Landroidx/fragment/app/c;->q:Ljava/lang/String;

    iput-object v8, v11, Landroidx/fragment/app/a;->h:Ljava/lang/String;

    const/4 v8, 0x1

    iput-boolean v8, v11, Landroidx/fragment/app/a;->g:Z

    iget v8, v4, Landroidx/fragment/app/c;->s:I

    iput v8, v11, Landroidx/fragment/app/a;->i:I

    iget-object v8, v4, Landroidx/fragment/app/c;->t:Ljava/lang/CharSequence;

    iput-object v8, v11, Landroidx/fragment/app/a;->j:Ljava/lang/CharSequence;

    iget v8, v4, Landroidx/fragment/app/c;->u:I

    iput v8, v11, Landroidx/fragment/app/a;->k:I

    iget-object v8, v4, Landroidx/fragment/app/c;->v:Ljava/lang/CharSequence;

    iput-object v8, v11, Landroidx/fragment/app/a;->l:Ljava/lang/CharSequence;

    iget v4, v4, Landroidx/fragment/app/c;->r:I

    iput v4, v11, Landroidx/fragment/app/a;->p:I

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_17

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_16

    iget-object v9, v11, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/f1;

    invoke-virtual {v7, v8}, Landroidx/fragment/app/e1;->a(Ljava/lang/String;)Landroidx/fragment/app/l0;

    move-result-object v8

    iput-object v8, v9, Landroidx/fragment/app/f1;->b:Landroidx/fragment/app/l0;

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_17
    iget-object v4, v11, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    iget-boolean v8, v11, Landroidx/fragment/app/a;->g:Z

    if-nez v8, :cond_18

    goto :goto_c

    :cond_18
    invoke-static/range {v17 .. v17}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v8

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Bump nesting in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " by 1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v8, :cond_1b

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/f1;

    iget-object v12, v10, Landroidx/fragment/app/f1;->b:Landroidx/fragment/app/l0;

    if-eqz v12, :cond_1a

    iget v13, v12, Landroidx/fragment/app/l0;->mBackStackNesting:I

    const/16 v19, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Landroidx/fragment/app/l0;->mBackStackNesting:I

    invoke-static/range {v17 .. v17}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v12

    if-eqz v12, :cond_1a

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Bump nesting of "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v10, Landroidx/fragment/app/f1;->b:Landroidx/fragment/app/l0;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Landroidx/fragment/app/f1;->b:Landroidx/fragment/app/l0;

    iget v10, v10, Landroidx/fragment/app/l0;->mBackStackNesting:I

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_1b
    :goto_c
    invoke-static/range {v17 .. v17}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "restoreAllState: back stack #"

    const-string v8, " (index "

    invoke-static {v3, v4, v8}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v11, Landroidx/fragment/app/a;->p:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroidx/fragment/app/p1;

    invoke-direct {v4}, Landroidx/fragment/app/p1;-><init>()V

    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v4, "  "

    const/4 v9, 0x0

    invoke-virtual {v11, v4, v8, v9}, Landroidx/fragment/app/a;->c(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    :cond_1c
    iget-object v4, v2, Landroidx/fragment/app/w0;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_7

    :cond_1d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroidx/fragment/app/w0;->d:Ljava/util/ArrayList;

    :cond_1e
    iget-object v3, v2, Landroidx/fragment/app/w0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v4, v1, Landroidx/fragment/app/y0;->o:I

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v3, v1, Landroidx/fragment/app/y0;->p:Ljava/lang/String;

    if-eqz v3, :cond_1f

    invoke-virtual {v7, v3}, Landroidx/fragment/app/e1;->a(Ljava/lang/String;)Landroidx/fragment/app/l0;

    move-result-object v3

    iput-object v3, v2, Landroidx/fragment/app/w0;->p:Landroidx/fragment/app/l0;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/w0;->f(Landroidx/fragment/app/l0;)V

    :cond_1f
    iget-object v3, v1, Landroidx/fragment/app/y0;->q:Ljava/util/ArrayList;

    if-eqz v3, :cond_20

    const/4 v9, 0x0

    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v9, v4, :cond_20

    iget-object v4, v2, Landroidx/fragment/app/w0;->i:Ljava/util/Map;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Landroidx/fragment/app/y0;->r:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/d;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_20
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Landroidx/fragment/app/y0;->s:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    goto :goto_e

    :cond_21
    move-object/from16 v16, v10

    :goto_e
    iget-object v0, v0, Landroidx/fragment/app/l0;->mChildFragmentManager:Landroidx/fragment/app/w0;

    const/4 v9, 0x0

    iput-boolean v9, v0, Landroidx/fragment/app/w0;->t:Z

    iput-boolean v9, v0, Landroidx/fragment/app/w0;->u:Z

    iget-object v1, v0, Landroidx/fragment/app/w0;->w:Landroidx/fragment/app/a1;

    iput-boolean v9, v1, Landroidx/fragment/app/a1;->g:Z

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroidx/fragment/app/w0;->h(I)V

    throw v16

    :cond_22
    :goto_f
    return-void
.end method

.method public final restoreViewState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/l0;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/l0;->mSavedViewState:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/l0;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroidx/fragment/app/l0;->mCalled:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    sget-object p1, Landroidx/lifecycle/o;->ON_CREATE:Landroidx/lifecycle/o;

    iget-object p0, p0, Landroidx/fragment/app/o1;->p:Landroidx/lifecycle/x;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/x;->e(Landroidx/lifecycle/o;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Landroidx/fragment/app/v1;

    const-string v0, "Fragment "

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-static {v0, p0, v1}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/h0;->p:Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/h0;->o:Ljava/lang/Boolean;

    return-void
.end method

.method public setAnimations(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/h0;->b:I

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p1

    iput p2, p1, Landroidx/fragment/app/h0;->c:I

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p1

    iput p3, p1, Landroidx/fragment/app/h0;->d:I

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    iput p4, p0, Landroidx/fragment/app/h0;->e:I

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already added and state has been saved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/l0;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method public setEnterSharedElementCallback(Li3/h;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/h0;->i:Ljava/lang/Object;

    return-void
.end method

.method public setExitSharedElementCallback(Li3/h;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/h0;->k:Ljava/lang/Object;

    return-void
.end method

.method public setFocusedView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/h0;->r:Landroid/view/View;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mHasMenu:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/fragment/app/l0;->mHasMenu:Z

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->isHidden()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public setInitialSavedState(Landroidx/fragment/app/k0;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/k0;->l:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mMenuVisible:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/fragment/app/l0;->mMenuVisible:Z

    iget-boolean p1, p0, Landroidx/fragment/app/l0;->mHasMenu:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->isHidden()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public setNextTransition(I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    iput p1, p0, Landroidx/fragment/app/h0;->f:I

    return-void
.end method

.method public setPopDirection(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    iput-boolean p1, p0, Landroidx/fragment/app/h0;->a:Z

    return-void
.end method

.method public setPostOnViewCreatedAlpha(F)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    iput p1, p0, Landroidx/fragment/app/h0;->q:F

    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/h0;->l:Ljava/lang/Object;

    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lz3/b;->a:Lz3/a;

    new-instance v0, Lz3/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to set retain instance for fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lz3/g;-><init>(Landroidx/fragment/app/l0;Ljava/lang/String;)V

    invoke-static {v0}, Lz3/b;->b(Lz3/g;)V

    invoke-static {p0}, Lz3/b;->a(Landroidx/fragment/app/l0;)Lz3/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean p1, p0, Landroidx/fragment/app/l0;->mRetainInstance:Z

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object p1, v0, Landroidx/fragment/app/w0;->w:Landroidx/fragment/app/a1;

    iget-object v0, p1, Landroidx/fragment/app/a1;->b:Ljava/util/HashMap;

    iget-boolean p1, p1, Landroidx/fragment/app/a1;->g:Z

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    invoke-static {v2}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Ignoring addRetainedFragment as the state is already saved"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Updating retained Fragments: Added "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object p1, v0, Landroidx/fragment/app/w0;->w:Landroidx/fragment/app/a1;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/a1;->f(Landroidx/fragment/app/l0;)V

    return-void

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/l0;->mRetainInstanceChangedWhileDetached:Z

    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/h0;->j:Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/h0;->m:Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    iget-object p0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    iput-object p1, p0, Landroidx/fragment/app/h0;->g:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidx/fragment/app/h0;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/h0;->n:Ljava/lang/Object;

    return-void
.end method

.method public setTargetFragment(Landroidx/fragment/app/l0;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lz3/b;->a:Lz3/a;

    new-instance v0, Lz3/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to set target fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with request code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lz3/g;-><init>(Landroidx/fragment/app/l0;Ljava/lang/String;)V

    invoke-static {v0}, Lz3/b;->b(Lz3/g;)V

    invoke-static {p0}, Lz3/b;->a(Landroidx/fragment/app/l0;)Lz3/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p1, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Fragment "

    const-string v0, " must share the same FragmentManager to be set as a target fragment"

    invoke-static {p2, p1, v0}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroidx/fragment/app/l0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/l0;->d(Z)Landroidx/fragment/app/l0;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the target of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " would create a target cycle"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    if-nez p1, :cond_6

    iput-object v1, p0, Landroidx/fragment/app/l0;->mTargetWho:Ljava/lang/String;

    iput-object v1, p0, Landroidx/fragment/app/l0;->mTarget:Landroidx/fragment/app/l0;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-eqz v0, :cond_7

    iget-object p1, p1, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    iput-object p1, p0, Landroidx/fragment/app/l0;->mTargetWho:Ljava/lang/String;

    iput-object v1, p0, Landroidx/fragment/app/l0;->mTarget:Landroidx/fragment/app/l0;

    goto :goto_3

    :cond_7
    iput-object v1, p0, Landroidx/fragment/app/l0;->mTargetWho:Ljava/lang/String;

    iput-object p1, p0, Landroidx/fragment/app/l0;->mTarget:Landroidx/fragment/app/l0;

    :goto_3
    iput p2, p0, Landroidx/fragment/app/l0;->mTargetRequestCode:I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lz3/b;->a:Lz3/a;

    new-instance v0, Lz3/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to set user visible hint to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lz3/g;-><init>(Landroidx/fragment/app/l0;Ljava/lang/String;)V

    invoke-static {v0}, Lz3/b;->b(Lz3/g;)V

    invoke-static {p0}, Lz3/b;->a(Landroidx/fragment/app/l0;)Lz3/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mUserVisibleHint:Z

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Landroidx/fragment/app/l0;->mState:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/l0;->mIsCreated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/l0;->mFragmentManager:Landroidx/fragment/app/w0;

    iget-object v3, v0, Landroidx/fragment/app/w0;->c:Landroidx/fragment/app/e1;

    iget-object v4, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    iget-object v3, v3, Landroidx/fragment/app/e1;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/d1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Landroidx/fragment/app/d1;->c:Landroidx/fragment/app/l0;

    iget-boolean v5, v4, Landroidx/fragment/app/l0;->mDeferStart:Z

    if-eqz v5, :cond_1

    iget-boolean v0, v0, Landroidx/fragment/app/w0;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, v4, Landroidx/fragment/app/l0;->mDeferStart:Z

    invoke-virtual {v3}, Landroidx/fragment/app/d1;->k()V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/fragment/app/l0;->mUserVisibleHint:Z

    iget v0, p0, Landroidx/fragment/app/l0;->mState:I

    if-ge v0, v2, :cond_2

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/l0;->mDeferStart:Z

    iget-object v0, p0, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/l0;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    :cond_3
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/l0;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string v0, " not attached to Activity"

    .line 3
    invoke-static {p2, p0, v0}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/l0;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string p3, " not attached to Activity"

    .line 3
    invoke-static {p2, p0, p3}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string p3, " not attached to Activity"

    invoke-static {p2, p0, p3}, Landroidx/fragment/app/t1;->c(Ljava/lang/String;Landroidx/fragment/app/l0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/l0;->mAnimationInfo:Landroidx/fragment/app/h0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/fragment/app/h0;->s:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/l0;->b()Landroidx/fragment/app/h0;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/h0;->s:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/l0;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/l0;->mFragmentId:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/l0;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/l0;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/l0;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method
