#ifndef __ndrasm_h__
#define __ndrasm_h__


  Timers (Broadcast ID, Hello, Neighbor Cache, Route Cache)
*/
class BroadcastTimer : public Handler {
public:
        BroadcastTimer(ndrasm* a) : agent(a) {}
        void	handle(Event*);
private:
        ndrasm    *agent;
	Event	intr;
};

class HelloTimer : public Handler {
public:
        HelloTimer(ndrasm* a) : agent(a) {}
        void	handle(Event*);
private:
        ndrasm    *agent;
	Event	intr;
};

class NeighborTimer : public Handler {
public:
        NeighborTimer(ndrasm* a) : agent(a) {}
        void	handle(Event*);
private:
        ndrasm    *agent;
	Event	intr;
};

class RouteCacheTimer : public Handler {
public:
        RouteCacheTimer(ndrasm* a) : agent(a) {}
        void	handle(Event*);
private:
        ndrasm    *agent;
	Event	intr;
};

class LocalRepairTimer : public Handler {
public:
        LocalRepairTimer(ndrasm* a) : agent(a) {}
        void	handle(Event*);
private:
        ndrasm    *agent;
	Event	intr;
};



class BroadcastID {
        friend class ndrasm;
 public:
        BroadcastID(nsaddr_t i, u_int32_t b) { src = i; id = b;  }
 protected:
        LIST_ENTRY(BroadcastID) link;
        nsaddr_t        src;
        u_int32_t       id;
        double          expire;         
};

LIST_HEAD(ndrasm_bcache, BroadcastID);



class ndrasm: public Agent {

  
        friend class ndrasm_rt_entry;
        friend class BroadcastTimer;
        friend class HelloTimer;
        friend class NeighborTimer;
        friend class RouteCacheTimer;
        friend class LocalRepairTimer;

 public:
        ndrasm(nsaddr_t id);

        void		recv(Packet *p, Handler *);

 protected:
        int             command(int, const char *const *);
        int             initialized() { return 1 && target_; }

        
        void            rt_resolve(Packet *p);
        void            rt_update(ndrasm_rt_entry *rt, u_int32_t seqnum,
		     	  	u_int16_t metric, nsaddr_t nexthop,
		      		double expire_time);
        void            rt_down(ndrasm_rt_entry *rt);
        void            local_rt_repair(ndrasm_rt_entry *rt, Packet *p);
 public:
        void            rt_ll_failed(Packet *p);
        void            handle_link_failure(nsaddr_t id);
 protected:
        void            rt_purge(void);

        void            enque(ndrasm_rt_entry *rt, Packet *p);
        Packet*         deque(ndrasm_rt_entry *rt);

     
        void            nb_insert(nsaddr_t id);
        ndrasm_Neighbor*       nb_lookup(nsaddr_t id);
        void            nb_delete(nsaddr_t id);
        void            nb_purge(void);

        

        void            id_insert(nsaddr_t id, u_int32_t bid);
        bool	        id_lookup(nsaddr_t id, u_int32_t bid);
        void            id_purge(void);

        
        void            forward(ndrasm_rt_entry *rt, Packet *p, double delay);
        void            sendHello(void);
        void            sendRequest(nsaddr_t dst);

        void            sendReply(nsaddr_t ipdst, u_int32_t hop_count,
                                  nsaddr_t rpdst, u_int32_t rpseq,
                                  u_int32_t lifetime, double timestamp);
        void            sendError(Packet *p, bool jitter = true);
                                          
        
        void            recvndrasm(Packet *p);
        void            recvHello(Packet *p);
        void            recvRequest(Packet *p);
        void            recvReply(Packet *p);
        void            recvError(Packet *p);

	
	
	double 		PerHopTime(ndrasm_rt_entry *rt);


        nsaddr_t        index;                 
        u_int32_t       seqno;                 
        int             bid;                   

        ndrasm_rtable         rthead;                 
        ndrasm_ncache         nbhead;                 
        ndrasm_bcache          bihead;                 

      
        BroadcastTimer  btimer;
        HelloTimer      htimer;
        NeighborTimer   ntimer;
        RouteCacheTimer rtimer;
        LocalRepairTimer lrtimer;

       
        ndrasm_rtable          rtable;
        
         
        ndrasm_rqueue         rqueue;

        
        .
         
        Trace           *logtarget;

        
         
        PriQueue        *ifqueue;

       
         
        void            log_link_del(nsaddr_t dst);
        void            log_link_broke(Packet *p);
        void            log_link_kept(nsaddr_t dst);


	PortClassifier *dmux_;

};

#endif 
